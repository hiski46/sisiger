<?php

namespace App\Controllers;

use CodeIgniter\RESTful\ResourceController;
use CodeIgniter\Model;

class ChatController extends ResourceController
{
    protected $modelName = 'App\Models\ChatModel';
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
    public function show($uid = null)
    {
        $userCode=$this->getUserCode($uid);
        // $chat = $this->model->select("chat.*, a.name as 'from_name', b.name as 'to_name'")->join("user a", "a.userCode=chat.'from'","left")->join("user b", "b.userCode=chat.to", "left")->where(['chat.from' => $uid])->orwhere(['chat."to"' => $uid])->findAll();
        $chat = $this->model->where(['from' => $userCode])->orwhere(['to' => $userCode])->findAll();
        // var_dump($chat);
        // die;
        $res = $this->setUid($chat);
        if($res){
            return $this->respond($res, 200);
        }else{
            return $this->respond(["msg"=>"kosong"], 404);
        }
    }
    
    public function setUid($chats){
        $res=[];
        foreach($chats as $chat){   
            $temp=[];
            $temp = $chat;
            $temp['from']=$this->getUid($chat['from']);
            $temp['to']=$this->getUid($chat['to']);
            array_push($res, $temp);
        }
        return $res;
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
            'from' => [
                'rules' => 'required',
                'errors' => [
                    'required' => 'from Harus di isi'
                ],
            ],
            'to' => [
                'rules' => 'required',
                'errors' => [
                    'required' => 'to tidak ditemukan'
                ],
            ],
            'chat' => [
                'rules' => 'required',
                'errors' => [
                    'required' => 'Chat Tidak boleh kosong'
                ],
            ],
        ]);
        if ($validasi) {
            $data =  (array) $this->request->getVar();
            $data['from']=$this->getUserCode($data['from']);
            $data['to']=$this->getUserCode($data['to']);
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
                    'from' => $this->validation->getError('from'),
                    'to' => $this->validation->getError('to'),
                    'chat' => $this->validation->getError('chat'),
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
    
    public function getUserCode($uid){
        $userCode = $this->Model->db->table('user')->select('userCode')->where('uid',$uid)->get()->getResultArray()[0]['userCode'];
        return $userCode;
    }
    public function getUid($userCode){
        $uid = $this->Model->db->table('user')->select('uid')->where('userCode',$userCode)->get()->getResultArray()[0]['uid'];
        return $uid;
    }
}