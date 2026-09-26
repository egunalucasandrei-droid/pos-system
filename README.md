# CodeIgniter 4 POS System

This student project is a simple Point of Sale website built with CodeIgniter 4. Customer Accounts and User Accounts are loaded from a MySQL database through CodeIgniter Models.

## Requirements

- XAMPP with Apache, MySQL, PHP 8.2 or newer, and the `intl` and `mysqli` extensions enabled
- Composer (only needed if the `vendor` folder is missing)

## Setup

1. Place the project at `C:\xampp\htdocs\pos-system`.
2. Start Apache and MySQL from the XAMPP Control Panel.
3. Open phpMyAdmin at `http://localhost/phpmyadmin`.
4. Select the **Import** tab and import `database/pos_system.sql`. The file creates the `pos_system` database, both required tables, and their sample records.
5. Check that the project's `.env` file contains these settings:

   ```ini
   CI_ENVIRONMENT = development
   app.baseURL = 'http://localhost:8080/'

   database.default.hostname = localhost
   database.default.database = pos_system
   database.default.username = root
   database.default.password =
   database.default.DBDriver = MySQLi
   database.default.DBPrefix =
   database.default.port = 3306
   ```

   If your MySQL `root` account has a password, enter it after `database.default.password =`.
6. If dependencies are missing, open a terminal in the project folder and run:

   ```powershell
   composer install
   ```

7. Start the CodeIgniter development server:

   ```powershell
   php spark serve
   ```

8. Open the website at `http://localhost:8080/`.

## Pages to test

- Customer Accounts: `http://localhost:8080/customers`
- User Accounts: `http://localhost:8080/users`
- About: `http://localhost:8080/about`

If you prefer to use XAMPP Apache instead of `php spark serve`, open `http://localhost/pos-system/public/` and append `customers` or `users` to that URL.
