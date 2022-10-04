<?php

namespace App\Models;

use CodeIgniter\Model;

class HotelModel extends Model
{
    protected $table            = 'hotel';
    protected $primaryKey       = 'hotelCode';
    protected $useAutoIncrement = true;
    protected $useSoftDeletes   = true;
    protected $protectFields    = true;
    protected $allowedFields    = [];

    // Dates
    protected $useTimestamps = true;
    protected $dateFormat    = 'datetime';
    protected $createdField  = 'createAt';
    protected $updatedField  = 'updateAt';
    protected $deletedField  = 'deleteAt';

    public function __construct()
    {
        parent::__construct();
        helper('general');
        $this->allowedFields = allfields($this->table);
    }
}
