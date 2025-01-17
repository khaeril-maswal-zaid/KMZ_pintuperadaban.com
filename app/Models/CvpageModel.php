<?php

namespace App\Models;

use CodeIgniter\Model;

class CvpageModel extends Model
{
    protected $table = 'viewerspage';
    protected $allowedFields = ['deteksi', 'date', 'idartikel']; //table yang diizinkan untuk di kelola

    public function addcount($ipaddress1Ipaddress2Browser, $idpage)
    {
        if (!$this->where('deteksi', $ipaddress1Ipaddress2Browser)->where('idartikel', $idpage)->countAllResults()) {
            $data = [
                'deteksi' => $ipaddress1Ipaddress2Browser,
                'date' => date('d-m-Y'),
                'idartikel' => $idpage
            ];

            $this->save($data);
        };
    }
}
