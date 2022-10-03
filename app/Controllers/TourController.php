<?php

namespace App\Controllers;

use CodeIgniter\RESTful\ResourceController;
use App\Models\LikeTourModel;

class TourController extends ResourceController
{

    protected $modelName = 'App\Models\TourModel';
    protected $format    = 'json';
    protected $validation;

    protected $liketourModel;


    public function __construct()
    {
        $this->validation = \Config\Services::validation();
        $this->liketourModel = new LikeTourModel();
    }

    /**
     * Return an array of resource objects, themselves in array format
     *
     * @return mixed
     */
    public function index()
    {
        $tours = $this->model->findAll();
        $data = [
            'status' => 200,
            'message' => 'Semua Objek Wisata',
            'data' => ['tours' => $tours],
        ];

        return $this->respond($data, 200);
    }

    public function tourByState($stateCode)
    {
        $tours = $this->model->where(['stateCode' => $stateCode])->findAll();
        if ($tours) {
            $data = [
                'status' => 200,
                'message' => 'Semua Objek Wisata',
                'data' => ['tours' => $tours],
            ];
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
            $data = [
                'status' => 200,
                'message' => 'Data tours by id',
                'data' => ['tours' => $tour],
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

    public function populerTour()
    {
        $tourLike = $this->liketourModel->db->query("SELECT tourCode, count(tourCode) AS jumlah_like FROM like_tour GROUP BY tourCode ORDER BY jumlah_like DESC LIMIT 10");
        $result = [];
        if ($tourLike->getNumRows() >= 2) {
            foreach ($tourLike->getResultArray() as $tour) {
                $tours = $this->model->find($tour['tourCode']);
                $tours['like'] = $tour['jumlah_like'];
                array_push($result, $tours);
            }
        } else {
            $tours = $this->model->findAll(10);
            foreach ($tours as $tour) {
                $like = $this->liketourModel->where(["tourCode" => $tour['tourCode']])->countAllResults();
                $tour['like'] = $like;
                array_push($result, $tour);
            }
        }
        $data = [
            'status' => 200,
            'message' => 'Semua Objek Wisata Populer',
            'data' => ['tours' => $result],
        ];

        return $this->respond($data, 200);
    }

    public function newTour()
    {
        $tours = $this->model->findAll(10);
        $data = [
            'status' => 200,
            'message' => 'Objek Wisata Baru',
            'data' => ['tours' => $tours],
        ];

        return $this->respond($data, 200);
    }
}
