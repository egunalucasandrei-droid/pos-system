<?php

namespace App\Controllers;

class Users extends BaseController
{
    public function index()
    {
        $data['users'] = [
            [
                'username' => 'kyel01',
                'full_name' => 'Kyel Novilla',
                'role' => 'Administrator'
            ],
            [
                'username' => 'jade02',
                'full_name' => 'Jade Biglang-awa',
                'role' => 'Manager'
            ],
            [
                'username' => 'marcus03',
                'full_name' => 'Marcus Leano',
                'role' => 'Cashier'
            ],
            [
                'username' => 'renz04',
                'full_name' => 'Renz Gapate',
                'role' => 'Cashier'
            ],
            [
                'username' => 'jiro05',
                'full_name' => 'Jiro Sales',
                'role' => 'Staff'
            ]
        ];

        return view('users/index', $data);
    }
}