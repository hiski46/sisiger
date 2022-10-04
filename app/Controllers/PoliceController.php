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
        $police = $this->model->findAll();
        $data = [
            'status' => 200,
            'message' => 'Semua Kantor Polisi',
            'data' => ['police' => $police],
        ];

        return $this->respond($data, 200);
    }

    /**
     * Return the properties of a resource object
     *
     * @return mixed
     */
    public function show($id = null)
    {
        $police = $this->model->where(['stateCode' => $id])->findAll();
        if ($police) {
            $data = [
                'status' => 200,
                'message' => 'Data Kantor Polisi by State',
                'data' => ['polices' => $police],
            ];
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
