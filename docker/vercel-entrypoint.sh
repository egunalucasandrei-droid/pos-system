#!/bin/sh

set -eu

data_dir=/tmp/pos-system-mariadb
socket_file=/tmp/pos-system-mariadb.sock
pid_file=/tmp/pos-system-mariadb.pid
log_file=/tmp/pos-system-mariadb.log

mkdir -p "$data_dir"
chown -R mysql:mysql "$data_dir"

if [ ! -d "$data_dir/mysql" ]; then
    mariadb-install-db \
        --auth-root-authentication-method=normal \
        --datadir="$data_dir" \
        --skip-test-db \
        --user=mysql >/dev/null
fi

mariadbd \
    --datadir="$data_dir" \
    --innodb-buffer-pool-size=64M \
    --log-error="$log_file" \
    --max-connections=20 \
    --pid-file="$pid_file" \
    --skip-networking \
    --socket="$socket_file" \
    --user=mysql &

database_pid=$!

cleanup() {
    if kill -0 "$database_pid" 2>/dev/null; then
        kill "$database_pid"
        wait "$database_pid" || true
    fi
}

trap cleanup EXIT INT TERM

attempt=0
until mariadb-admin --protocol=socket --socket="$socket_file" --user=root ping --silent; do
    attempt=$((attempt + 1))

    if [ "$attempt" -ge 30 ]; then
        echo "MariaDB did not become ready." >&2
        cat "$log_file" >&2
        exit 1
    fi

    sleep 1
done

mariadb --protocol=socket --socket="$socket_file" --user=root \
    < /app/database/pos_system.sql

trap - EXIT INT TERM
exec frankenphp run --config /etc/caddy/Caddyfile
