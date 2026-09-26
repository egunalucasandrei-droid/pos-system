-- TFA2 database export for the CodeIgniter POS project

CREATE DATABASE IF NOT EXISTS pos_system
    CHARACTER SET utf8mb4
    COLLATE utf8mb4_general_ci;

USE pos_system;

DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS customers;

CREATE TABLE customers (
    id INT AUTO_INCREMENT PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    phone VARCHAR(20),
    created_at DATETIME NOT NULL
);

CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE,
    full_name VARCHAR(100) NOT NULL,
    created_at DATETIME NOT NULL
);

INSERT INTO customers (full_name, email, phone, created_at) VALUES
    ('Kyel Novilla', 'kyel.novilla@email.com', '0917-123-4501', '2026-09-20 09:15:00'),
    ('Jade Biglang-awa', 'jade.biglangawa@email.com', '0917-123-4502', '2026-09-20 10:30:00'),
    ('Marcus Leano', 'marcus.leano@email.com', '0917-123-4503', '2026-09-21 08:45:00'),
    ('Renz Gapate', 'renz.gapate@email.com', '0917-123-4504', '2026-09-22 13:20:00'),
    ('Jiro Sales', 'jiro.sales@email.com', '0917-123-4505', '2026-09-23 15:05:00');

INSERT INTO users (username, full_name, created_at) VALUES
    ('kyel01', 'Kyel Novilla', '2026-09-20 09:00:00'),
    ('jade02', 'Jade Biglang-awa', '2026-09-20 09:10:00'),
    ('marcus03', 'Marcus Leano', '2026-09-20 09:20:00'),
    ('renz04', 'Renz Gapate', '2026-09-20 09:30:00'),
    ('jiro05', 'Jiro Sales', '2026-09-20 09:40:00');
