<?php

namespace App\Controllers;

use CodeIgniter\RESTful\ResourceController;

class MedicalFacilityController extends ResourceController
{
    protected $modelName = 'App\Models\MedicalFacilityModel';
    protected $format    = 'json';
    /**
     * Return an array of resource objects, themselves in array format
     *
     * @return mixed
     */
    public function index()
    {
        $medicalfacility = $this->model->select("medical_facility.*, COUNT(like_medical_facility.`mfCode`) AS 'like', COUNT(comment_medical_facility.`mfCode`) AS 'comment'")->join("like_medical_facility", "like_medical_facility.`mfCode`=medical_facility.`mfCode`", "left")->join("comment_medical_facility", "like_medical_facility.`mfCode`= comment_medical_facility.`mfCode`", "left")->groupBy("medical_facility.`mfCode`")->findAll();
        $data = $medicalfacility;

        return $this->respond($data, 200);
    }

    /**
     * Return the properties of a resource object
     *
     * @return mixed
     */
    public function show($id = null)
    {
        $medicalfacility = $this->model->select("medical_facility.*, COUNT(like_medical_facility.`mfCode`) AS 'like', COUNT(comment_medical_facility.`mfCode`) AS 'comment'")->join("like_medical_facility", "like_medical_facility.`mfCode`=medical_facility.`mfCode`", "left")->join("comment_medical_facility", "like_medical_facility.`mfCode`= comment_medical_facility.`mfCode`", "left")->groupBy("medical_facility.`mfCode`")->where(['medical_facility.stateCode' => $id])->findAll();
        if ($medicalfacility) {
            $data = $medicalfacility;
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
