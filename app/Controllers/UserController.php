<?php

namespace App\Controllers;

use CodeIgniter\RESTful\ResourceController;

class UserController extends ResourceController
{

    protected $modelName = 'App\Models\UsersModel';
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
    }

    /**
     * Return the properties of a resource object
     *
     * @return mixed
     */
    public function show($id = null)
    {
        $user = $this->model->where(['uid' => $id])->findAll()[0];
        return $this->respond($user, 200);
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
            'uid' => [
                'rules' => 'required|is_unique[user.uid]',
                'errors' => [
                    'required' => 'uid kosong'
                ],
            ],
            'name' => [
                'rules' => 'required',
                'errors' => [
                    'required' => 'Nama harus diisi'
                ],
            ],
            'email' => [
                'rules' => 'required',
                'errors' => [
                    'required' => 'Email harus diisi'
                ],
            ],
        ]);

        if ($validasi) {
            $data =  (array) $this->request->getVar();
            if ($this->model->save($data)) {
                $msg = [
                    'status' => 200,
                    'message' => 'User berhasil ditambah',
                    'data' => $data,
                ];
                return $this->respond($msg, 200);
            } else {
                $msg = [
                    'status' => 500,
                    'message' => 'User gagal ditambah',
                    'data' => [],
                ];
                return $this->respond($msg, 500);
            }
        } else {
            $msg = [
                'status' => 500,
                'message' => 'Validasi error',
                'data' => [
                    'uid' => $this->validation->getError('uid'),
                    'name' => $this->validation->getError('name'),
                    'email' => $this->validation->getError('email'),
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
        
    }

    /**
     * Add or update a model resource, from "posted" properties
     *
     * @return mixed
     */
    public function update($id = null)
    {
        $validasi = $this->validate([
            'name' => [
                'rules' => 'required',
                'errors' => [
                    'required' => 'Nama User Harus di isi'
                ],
            ],
        ]);
        if ($validasi) {
            $data = (array) $this->request->getVar();
            $userCode = $this->getUserCode($id);
            $this->model->update(['userCode' => $userCode], $data);
            if ($this->model->db->affectedRows() !== 0) {
                $msg = [
                    'status' => 200,
                    'message' => 'User berhasil diubah',
                    'data' => $data,
                ];
                return $this->respond($msg, 200);
            } else {
                $msg = [
                    'status' => 500,
                    'message' => 'User gagal diubah',
                    'data' => [],
                ];
                return $this->respond($msg, 500);
            }
        } else {
            $msg = [
                'status' => 500,
                'message' => 'Validasi error',
                'data' => [
                    'name' => $this->validation->getError('name'),
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
        //
    }
    public function getUserCode($uid){
        $userCode = $this->model->db->table('user')->select('userCode')->where('uid',$uid)->get()->getResultArray()[0]['userCode'];
        return $userCode;
    }
}
