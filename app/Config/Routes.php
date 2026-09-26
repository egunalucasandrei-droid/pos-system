<?php

use CodeIgniter\Router\RouteCollection;

/** @var RouteCollection $routes */

$routes->match(['get', 'head'], '/', 'Pages::home');
$routes->match(['get', 'head'], '/about', 'Pages::about');
$routes->match(['get', 'head'], '/customers', 'Customers::index');
$routes->match(['get', 'head'], '/users', 'Users::index');
