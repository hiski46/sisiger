<?php

namespace App\Models;

use CodeIgniter\Model;

class ArchiveArticleModel extends Model
{
    protected $table            = 'archive_article';
    protected $primaryKey       = 'atCode';
    protected $useAutoIncrement = true;
    protected $useSoftDeletes   = false;
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
