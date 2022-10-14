<?php

namespace App\Controllers;

use CodeIgniter\RESTful\ResourceController;
use App\Models\TourImageModel;
use CodeIgniter\Model;



class ArchiveTourController extends ResourceController
{
    protected $modelName = 'App\Models\ArchiveTourModel';
    protected $format    = 'json';
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
        //
    }

    /**
     * Return the properties of a resource object
     *
     * @return mixed
     */
    public function show($id = null)
    {
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
                    'message' => 'Tour berhasil diarchive',
                    'data' => $data,
                ];
                return $this->respond($msg, 200);
            } else {
                $msg = [
                    'status' => 500,
                    'message' => 'Comment gagal diarchive',
                    'data' => [],
                ];
                return $this->respond($msg, 500);
            }
        } else {
            $msg = [
                'status' => 500,
                'message' => 'Validasi error',
                'data' => [
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

    public function allArchiveTourByUser($userCode)
    {
        $tour = $this->model->where(["archive_tour.userCode" => $userCode])->findAll();
        // $tour = $this->model->select("tour.*, COUNT(like_tour.`tourCode`) AS 'like', COUNT(comment_tour.`tourCode`) AS 'comment'")->join("like_tour", "like_tour.`tourCode`=tour.`tourCode`", "left")->join("comment_tour", "like_tour.`tourCode`= comment_tour.`tourCode`", "left")->groupBy("tour.`tourCode`")->findAll();
        if ($tour) {
            $data = $this->setThumbTour($tour);
        } else {
            $data = [
                'status' => 404,
                'message' => 'Tidak ada objek wisata yang di archive',
                'data' => ['tour' => $tour],
            ];
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

    public function deleteArchiveTour($userCode, $tourCode)
    {
        $this->model->where(["userCode" => $userCode, "tourCode" => $tourCode])->delete();
        if ($this->model->db->affectedRows() === 0) {
            $msg = [
                'status' => 404,
                'message' => 'Objek Wisatatidak ditemukan atau sudah dihapus',
                'data' => [],
            ];
            return $this->respond($msg, 404);
        }
        $msg = [
            'status' => 200,
            'message' => 'Objek Wisata berhasil dihapus dari archive',
            'data' => [],
        ];
        return $this->respond($msg, 200);
    }
}
