<?php

namespace App\Controllers;

use CodeIgniter\RESTful\ResourceController;
use App\Models\TourImageModel;
use CodeIgniter\Model;


class TourController extends ResourceController
{

    protected $modelName = 'App\Models\TourModel';
    protected $format    = 'json';
    protected $validation;
    protected $tourImageModel;
    protected $Model;



    public function __construct()
    {
        $this->validation = \Config\Services::validation();
        $this->tourImageModel = new TourImageModel;
        $this->Model = new Model();
    }

    /**
     * Return an array of resource objects, themselves in array format
     *
     * @return mixed
     */
    public function index()
    {
        $tours = $this->model->findAll();
        $rest = $this->setThumbTour($tours);
        return $this->respond($rest, 200);
    }

    public function tourByState($stateCode)
    {
        // $tours = $this->model->select("tour.*, COUNT(like_tour.`tourCode`) AS 'like', COUNT(comment_tour.`tourCode`) AS 'comment'")->join("like_tour", "like_tour.`tourCode`=tour.`tourCode`", "left")->join("comment_tour", "like_tour.`tourCode`= comment_tour.`tourCode`", "left")->where(["tour.StateCode" => $stateCode])->groupBy("tour.`tourCode`")->findAll();
        $tours = $this->model->where(["tour.StateCode" => $stateCode])->findAll();
        if ($tours) {
            $data = $this->setThumbTour($tours);
        } else {
            $data = [
                'status' => 404,
                'message' => 'Objek Wisata masih kosong',
                'data' => ['tours' => $tours],
            ];
        }
        return $this->respond($data, 200);
    }

    /**
     * Return the properties of a resource object
     *
     * @return mixed
     */
    public function show($id = null)
    {
        $tour = $this->model->find($id);
        if ($tour) {
            $tour['image'] = $this->getThumbImageTour($tour['tourCode']);
            $data = [$tour];
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
            'name' => [
                'rules' => 'required',
                'errors' => [
                    'required' => 'Nama Objek Wisata Harus di isi'
                ],
            ],
            'stateCode' => [
                'rules' => 'required',
                'errors' => [
                    'required' => 'Kabupaten Objek Wisata Harus di isi'
                ],
            ],

        ]);
        if ($validasi) {
            $data =  (array) $this->request->getVar();
            if ($this->model->save($data)) {
                $msg = [
                    'status' => 200,
                    'message' => 'Objek Wisata berhasil ditambah',
                    'data' => $data,
                ];
                return $this->respond($msg, 200);
            } else {
                $msg = [
                    'status' => 500,
                    'message' => 'Objek Wisata gagal ditambah',
                    'data' => [],
                ];
                return $this->respond($msg, 500);
            }
        } else {
            $msg = [
                'status' => 500,
                'message' => 'Validasi error',
                'data' => [
                    'stateCode' => $this->validation->getError('stateCode'),
                    'name' => $this->validation->getError('name'),
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
            'name' => [
                'rules' => 'required',
                'errors' => [
                    'required' => 'Nama Objek Wisata Harus di isi'
                ],
            ],
            'stateCode' => [
                'rules' => 'required',
                'errors' => [
                    'required' => 'Kabupaten Objek Wisata Harus di isi'
                ],
            ],
        ]);
        if ($validasi) {
            $data = (array) $this->request->getVar();
            $this->model->update(['tourCode' => $id], $data);
            if ($this->model->db->affectedRows() !== 0) {
                $msg = [
                    'status' => 200,
                    'message' => 'Objek Wisata berhasil diubah',
                    'data' => $data,
                ];
                return $this->respond($msg, 200);
            } else {
                $msg = [
                    'status' => 500,
                    'message' => 'Objek Wisata gagal diubah',
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
                    'stateCode' => $this->validation->getError('stateCode'),
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
                'message' => 'Objek Wisata dengan id ' . $id . ' tidak ditemukan atau sudah dihapus',
                'data' => [],
            ];
            return $this->respond($msg, 404);
        }
        $msg = [
            'status' => 200,
            'message' => 'Objek Wisata berhasil dihapus',
            'data' => [],
        ];
        return $this->respond($msg, 200);
    }

    public function populerTour($limit = 0)
    {

        $tours = $this->model->select("tour.*, COUNT(like_tour.`tourCode`) AS 'like'")->join("like_tour", "like_tour.`tourCode`=tour.`tourCode`", "left")->groupBy("tour.`tourCode`")->limit($limit)->orderBy("like", "DESC")->findAll($limit);
        $data = [];
        foreach ($tours as $tour) {
            $temp = [];
            $temp = $tour;
            $temp['comment'] = $this->countTourComment($tour['tourCode']);
            $temp['image'] = $this->getThumbImageTour($tour['tourCode']);
            array_push($data, $temp);
        }

        return $this->respond($data, 200);
    }

    public function newTour($limit = 0)
    {
        $tours = $this->model->limit($limit)->orderBy("tourCode", "DESC")->findAll($limit);
        $data = $this->setThumbTour($tours);
        return $this->respond($data, 200);
    }

    public function recomendedTour($limit = 0)
    {
        $tours = $this->model->select("tour.*, COUNT(comment_tour.`tourCode`) AS 'comment'")->join("comment_tour", "tour.`tourCode`= comment_tour.`tourCode`", "left")->groupBy("tour.`tourCode`")->limit($limit)->orderBy("comment", "DESC")->findAll($limit);
        $data = [];
        foreach ($tours as $tour) {
            $temp = [];
            $temp = $tour;
            $temp['like'] = $this->countTourLike($tour['tourCode']);
            $temp['image'] = $this->getThumbImageTour($tour['tourCode']);
            array_push($data, $temp);
        }
        return $this->respond($data, 200);
    }

    public function getThumbImageTour($tourCode)
    {
        $image = $this->tourImageModel->select('path')->where('tourCode', $tourCode)->where('type', 'thumb')->first();
        $res = $image ? $image['path'] : null;
        return $res;
    }

    public function setThumbTour($tours)
    {
        $res = [];
        foreach ($tours as $tour) {
            $temp = [];
            $temp = $tour;
            $temp['image'] = $this->getThumbImageTour($tour['tourCode']);
            $temp['like'] = $this->countTourLike($tour['tourCode']);
            $temp['comment'] = $this->countTourComment($tour['tourCode']);
            array_push($res, $temp);
        }
        return $res;
    }

    public function allImageTour($tourCode)
    {
        $image = $this->tourImageModel->select('path')->where('tourCode', $tourCode)->findAll();
        $res = [];
        foreach ($image as $i) {
            array_push($res, $i['path']);
        }
        return $this->respond($res, 200);
    }

    public function countTourLike($tourCode)
    {
        $count = 0;
        $count = $this->Model->db->table('like_tour')->where('tourCode', $tourCode)->countAllResults();
        return $count;
    }
    public function countTourComment($tourCode)
    {
        $count = 0;
        $count = $this->Model->db->table('comment_tour')->where('tourCode', $tourCode)->countAllResults();
        return $count;
    }
}
