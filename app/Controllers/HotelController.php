<?php

namespace App\Controllers;

use CodeIgniter\RESTful\ResourceController;

class HotelController extends ResourceController
{
    protected $modelName = 'App\Models\HotelModel';
    protected $format    = 'json';
    /**
     * Return an array of resource objects, themselves in array format
     *
     * @return mixed
     */
    public function index()
    {
        $hotel = $this->model->select("hotel.*, COUNT(like_hotel.`hotelCode`) AS 'like', COUNT(comment_hotel.`hotelCode`) AS 'comment'")->join("like_hotel", "like_hotel.`hotelCode`=hotel.`hotelCode`", "left")->join("comment_hotel", "like_hotel.`hotelCode`= comment_hotel.`hotelCode`", "left")->groupBy("hotel.`hotelCode`")->findAll();
        $data = [
            'status' => 200,
            'message' => 'Semua Hotel',
            'data' => ['hotel' => $hotel],
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
        $hotel = $this->model->select("hotel.*, COUNT(like_hotel.`hotelCode`) AS 'like', COUNT(comment_hotel.`hotelCode`) AS 'comment'")->join("like_hotel", "like_hotel.`hotelCode`=hotel.`hotelCode`", "left")->join("comment_hotel", "like_hotel.`hotelCode`= comment_hotel.`hotelCode`", "left")->groupBy("hotel.`hotelCode`")->where(['hotel.stateCode' => $id])->findAll();
        if ($hotel) {
            $data = [
                'status' => 200,
                'message' => 'Data Hotel by State',
                'data' => ['hotels' => $hotel],
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
