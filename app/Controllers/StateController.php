<?php

namespace App\Controllers;

use CodeIgniter\RESTful\ResourceController;

class StateController extends ResourceController
{
    protected $modelName = 'App\Models\StateModel';
    protected $format    = 'json';
    protected $validation;


    public function __construct()
    {
        $this->validation = \Config\Services::validation();
    }

    /**
     * Return an array of resource objects, themselves in array format
     *
     * @return mixed
     */
    public function index()
    {
        $state = $this->model->findAll();
        $data = $state;

        return $this->respond($data, 200);
    }

    /**
     * Return the properties of a resource object
     *
     * @return mixed
     */
    public function show($id = null)
    {
        $kabupaten = $this->model->find($id);
        if ($kabupaten) {
            $data = $kabupaten;
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
        $validasi = $this->validate([
            'state' => [
                'rules' => 'required|is_unique[state.state]',
                'errors' => [
                    'required' => 'Nama Kabupaten Harus di isi',
                    'is_unique' => 'Nama Kabupaten yang dimasukkan sudah terdaftar',
                ],
            ],

        ]);
        if ($validasi) {
            $data =  (array) $this->request->getVar();
            if ($this->model->save($data)) {
                $msg = [
                    'status' => 200,
                    'message' => 'Kabupaten berhasil ditambah',
                    'data' => $data,
                ];
                return $this->respond($msg, 200);
            } else {
                $msg = [
                    'status' => 500,
                    'message' => 'Kabupaten gagal ditambah',
                    'data' => [],
                ];
                return $this->respond($msg, 500);
            }
        } else {
            $msg = [
                'status' => 500,
                'message' => 'Validasi error',
                'data' => [
                    'state' => $this->validation->getError('state'),
                ],
            ];
            return $this->respond($msg, 500);
        }
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
        $validasi = $this->validate([
            'state' => [
                'rules' => 'required|is_unique[state.state]',
                'errors' => [
                    'required' => 'Nama Kabupaten Harus di isi',
                    'is_unique' => 'Nama Kabupaten yang dimasukkan sudah terdaftar',
                ],
            ],
        ]);
        if ($validasi) {
            $data = (array) $this->request->getVar();
            $this->model->update(['stateCode' => $id], $data);
            if ($this->model->db->affectedRows() !== 0) {
                $msg = [
                    'status' => 200,
                    'message' => 'Kabupaten berhasil diubah',
                    'data' => $data,
                ];
                return $this->respond($msg, 200);
            } else {
                $msg = [
                    'status' => 500,
                    'message' => 'Kabupaten gagal diubah',
                    'data' => [],
                ];
                return $this->respond($msg, 500);
            }
        } else {
            $msg = [
                'status' => 500,
                'message' => 'Validasi error',
                'data' => [
                    'state' => $this->validation->getError('state'),
                ],
            ];
            return $this->respond($msg, 500);
        }
    }

    /**
     * Delete the designated resource object from the model
     *
     * @return mixed
     */
    public function delete($id = null)
    {
        $this->model->delete($id);
        if ($this->model->db->affectedRows() === 0) {
            $msg = [
                'status' => 404,
                'message' => 'Kabupaten dengan id ' . $id . ' tidak ditemukan atau sudah dihapus',
                'data' => [],
            ];
            return $this->respond($msg, 404);
        }
        $msg = [
            'status' => 200,
            'message' => 'Kabupaten berhasil dihapus',
            'data' => [],
        ];
        return $this->respond($msg, 200);
    }
}
