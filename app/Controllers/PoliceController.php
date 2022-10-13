<?php

namespace App\Controllers;

use CodeIgniter\RESTful\ResourceController;

class PoliceController extends ResourceController
{
    protected $modelName = 'App\Models\PoliceModel';
    protected $format    = 'json';
    /**
     * Return an array of resource objects, themselves in array format
     *
     * @return mixed
     */
    public function index()
    {
        $police = $this->model->select("police.*, COUNT(like_police.`policeCode`) AS 'like', COUNT(comment_police.`policeCode`) AS 'comment'")->join("like_police", "like_police.`policeCode`=police.`policeCode`", "left")->join("comment_police", "like_police.`policeCode`= comment_police.`policeCode`", "left")->groupBy("police.`policeCode`")->findAll();
        $data = $police;

        return $this->respond($data, 200);
    }

    /**
     * Return the properties of a resource object
     *
     * @return mixed
     */
    public function show($id = null)
    {
        $police = $this->model->select("police.*, COUNT(like_police.`policeCode`) AS 'like', COUNT(comment_police.`policeCode`) AS 'comment'")->join("like_police", "like_police.`policeCode`=police.`policeCode`", "left")->join("comment_police", "like_police.`policeCode`= comment_police.`policeCode`", "left")->groupBy("police.`policeCode`")->where(['police.stateCode' => $id])->findAll();
        if ($police) {
            $data = $police;
        } else {
            $data = [
                'status' => 404,
                'message' => 'Data tidak ditemukan',
                'data' => [],
            ];
        }

        return $this->respond($data, 200);
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
}
