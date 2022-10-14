<?php

namespace App\Controllers;

use CodeIgniter\RESTful\ResourceController;
use CodeIgniter\Model;

class LikeController extends ResourceController
{
    protected $Model;

    public function __construct()
    {
        $this->Model = new Model();
    }
    /**
     * Return an array of resource objects, themselves in array format
     *
     * @return mixed
     */
    public function index()
    {
        //
    }

    /**
     * Return the properties of a resource object
     *
     * @return mixed
     */
    public function show($id = null)
    {
        //
    }

    /**
     * Return a new resource object, with default properties
     *
     * @return mixed
     */
    public function new()
    {
        //
    }

    /**
     * Create a new resource object, from "posted" parameters
     *
     * @return mixed
     */
    public function create()
    {
        //
    }

    /**
     * Return the editable properties of a resource object
     *
     * @return mixed
     */
    public function edit($id = null)
    {
        //
    }

    /**
     * Add or update a model resource, from "posted" properties
     *
     * @return mixed
     */
    public function update($id = null)
    {
        //
    }

    /**
     * Delete the designated resource object from the model
     *
     * @return mixed
     */
    public function delete($id = null)
    {
        //
    }

    public function likeTour($tourCode, $userCode)
    {
        $data = ['userCode' => $userCode, 'tourCode' => $tourCode];
        if ($this->Model->db->table('like_tour')->insert($data)) {
            $msg = [
                'status' => 200,
                'message' => 'Tour Berhasil di Like',
            ];
            return $this->respond($msg, 200);
        } else {
            $msg = [
                'status' => 500,
                'message' => 'Tour gagal di Like',
            ];
            return $this->respond($msg, 500);
        }
    }

    public function dislikeTour($tourCode, $userCode)
    {

        if ($this->Model->db->table('like_tour')->delete(['tourCode' => $tourCode, 'userCode' => $userCode])) {
            $msg = [
                'status' => 200,
                'message' => 'Tour Berhasil di disLike',
            ];
            return $this->respond($msg, 200);
        } else {
            $msg = [
                'status' => 500,
                'message' => 'Tour gagal di disLike',
            ];
            return $this->respond($msg, 500);
        }
    }
}
