<?php

namespace App\Controllers;

use CodeIgniter\RESTful\ResourceController;

class CommentTourController extends ResourceController
{
    protected $modelName = 'App\Models\CommentTourModel';
    protected $format    = 'json';

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
        //
    }

    /**
     * Return the properties of a resource object
     *
     * @return mixed
     */
    public function show($id = null)
    {
        $comment = $this->model->select("comment_tour.*, user.name, user.image")->join("user", "user.userCode=comment_tour.userCode")->where(['comment_tour.tourCode' => $id])->findAll();
        return $this->respond($comment, 200);
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
            'comment' => [
                'rules' => 'required',
                'errors' => [
                    'required' => 'Comment Harus di isi'
                ],
            ],
            'userCode' => [
                'rules' => 'required',
                'errors' => [
                    'required' => 'User tidak ditemukan'
                ],
            ],
            'tourCode' => [
                'rules' => 'required',
                'errors' => [
                    'required' => 'Objek wisata tidak ditemukan'
                ],
            ],
        ]);
        if ($validasi) {
            $data =  (array) $this->request->getVar();
            if ($this->model->save($data)) {
                $msg = [
                    'status' => 200,
                    'message' => 'Comment berhasil ditambah',
                    'data' => $data,
                ];
                return $this->respond($msg, 200);
            } else {
                $msg = [
                    'status' => 500,
                    'message' => 'Comment gagal ditambah',
                    'data' => [],
                ];
                return $this->respond($msg, 500);
            }
        } else {
            $msg = [
                'status' => 500,
                'message' => 'Validasi error',
                'data' => [
                    'comment' => $this->validation->getError('comment'),
                    'userCode' => $this->validation->getError('userCode'),
                    'tourCode' => $this->validation->getError('tourCode'),
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
