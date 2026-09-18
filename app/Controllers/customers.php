<?php

namespace App\Controllers;

class Customers extends BaseController
{
    public function index()
    {
        $data['customers'] = [
            [
                'customer_no' => 'DC31-001',
                'name' => 'Kyel Novilla',
                'email' => 'kyel.novilla@email.com'
            ],
            [
                'customer_no' => 'DC31-002',
                'name' => 'Jade Biglang-awa',
                'email' => 'jade.biglangawa@email.com'
            ],
            [
                'customer_no' => 'DC31-003',
                'name' => 'Marcus Leano',
                'email' => 'marcus.leano@email.com'
            ],
            [
                'customer_no' => 'DC31-004',
                'name' => 'Renz Gapate',
                'email' => 'renz.gapate@email.com'
            ],
            [
                'customer_no' => 'DC31-005',
                'name' => 'Jiro Sales',
                'email' => 'jiro.sales@email.com'
            ]
        ];

        return view('customers/index', $data);
    }
}