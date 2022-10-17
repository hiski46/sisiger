<?php

namespace App\Controllers;

use CodeIgniter\RESTful\ResourceController;
use CodeIgniter\Model;

class CommentArticleController extends ResourceController
{
    protected $modelName = 'App\Models\CommentArticleModel';
    protected $format    = 'json';
    protected $Model;

    public function __construct()
    {
        $this->validation = \Config\Services::validation();
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
        $comment = $this->model->select("comment_article.*, user.name, user.image")
            ->join("user", "user.userCode=comment_article.userCode")
            ->where(['comment_article.articleCode' => $id])
            ->orderBy("caCode", "DESC")->findAll();
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
            'articleCode' => [
                'rules' => 'required',
                'errors' => [
                    'required' => 'Article tidak ditemukan'
                ],
            ],
        ]);
        if ($validasi) {
            $data =  (array) $this->request->getVar();
            $data['userCode'] = $this->getUserCode($data['userCode']);
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
                    'articleCode' => $this->validation->getError('articleCode'),
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

    public function getUserCode($uid)
    {
        $userCode = $this->Model->db->table('user')->select('userCode')->where('uid', $uid)->get()->getResultArray()[0]['userCode'];
        return $userCode;
    }
}
