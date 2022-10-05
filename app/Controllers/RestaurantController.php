<?php

namespace App\Controllers;

use CodeIgniter\RESTful\ResourceController;

class RestaurantController extends ResourceController
{
    protected $modelName = 'App\Models\RestaurantModel';
    protected $format    = 'json';
    /**
     * Return an array of resource objects, themselves in array format
     *
     * @return mixed
     */
    public function index()
    {
        $restaurant = $this->model->select("restaurant.*, COUNT(like_restaurant.`restaurantCode`) AS 'like', COUNT(comment_restaurant.`restaurantCode`) AS 'comment'")->join("like_restaurant", "like_restaurant.`restaurantCode`=restaurant.`restaurantCode`", "left")->join("comment_restaurant", "like_restaurant.`restaurantCode`= comment_restaurant.`restaurantCode`", "left")->groupBy("restaurant.`restaurantCode`")->findAll();
        $data = [
            'status' => 200,
            'message' => 'Semua restaurant',
            'data' => ['restaurant' => $restaurant],
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
        $restaurant = $this->model->select("restaurant.*, COUNT(like_restaurant.`restaurantCode`) AS 'like', COUNT(comment_restaurant.`restaurantCode`) AS 'comment'")->join("like_restaurant", "like_restaurant.`restaurantCode`=restaurant.`restaurantCode`", "left")->join("comment_restaurant", "like_restaurant.`restaurantCode`= comment_restaurant.`restaurantCode`", "left")->groupBy("restaurant.`restaurantCode`")->where(['restaurant.stateCode' => $id])->findAll();
        if ($restaurant) {
            $data = [
                'status' => 200,
                'message' => 'Data restaurant by State',
                'data' => ['restaurants' => $restaurant],
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
