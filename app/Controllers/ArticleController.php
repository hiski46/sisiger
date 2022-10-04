<?php

namespace App\Controllers;

use CodeIgniter\RESTful\ResourceController;

class ArticleController extends ResourceController
{

    protected $modelName = 'App\Models\ArticleModel';
    protected $format    = 'json';
    protected $validation;

    protected $liketourModel;


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
        $article = $this->model->findAll();
        $data = [
            'status' => 200,
            'message' => 'Semua Article',
            'data' => ['article' => $article],
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
        $article = $this->model->find($id);
        if ($article) {
            $data = [
                'status' => 200,
                'message' => 'Data articles by id',
                'data' => ['articles' => $article],
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

    public function newArticle()
    {
        $article = $this->model->findAll(5);
        $data = [
            'status' => 200,
            'message' => 'Article yang Baru Ditambahkan',
            'data' => ['article' => $article],
        ];

        return $this->respond($data, 200);
    }
}
