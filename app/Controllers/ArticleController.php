<?php

namespace App\Controllers;

use CodeIgniter\RESTful\ResourceController;
use CodeIgniter\Model;

class ArticleController extends ResourceController
{

    protected $modelName = 'App\Models\ArticleModel';
    protected $format    = 'json';
    protected $validation;

    protected $liketourModel;
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
        // $article = $this->model->select("article.*, COUNT(like_article.`articleCode`) AS 'like', COUNT(comment_article.`articleCode`) AS 'comment'")->join("like_article", "like_article.`articleCode`=article.`articleCode`", "left")->join("comment_article", "like_article.`articleCode`= comment_article.`articleCode`", "left")->groupBy("article.`articleCode`")->findAll();
        $article = $this->model->findAll();
        $rest = $this->setThumbTour($article);
        return $this->respond($rest, 200);

        return $this->respond($data, 200);
    }
    
    public function setThumbTour($tours)
    {
        $res = [];
        foreach ($tours as $tour) {
            $temp = [];
            $temp = $tour;
            $temp['like'] = $this->countTourLike($tour['articleCode']);
            $temp['comment'] = $this->countTourComment($tour['articleCode']);
            array_push($res, $temp);
        }
        return $res;
    }
    
    public function countTourLike($tourCode)
    {
        $count = 0;
        $count = $this->Model->db->table('like_article')->where('articleCode', $tourCode)->countAllResults();
        return $count;
    }
    public function countTourComment($tourCode)
    {
        $count = 0;
        $count = $this->Model->db->table('comment_article')->where('articleCode', $tourCode)->countAllResults();
        return $count;
    }

    /**
     * Return the properties of a resource object
     *
     * @return mixed
     */
    public function show($id = null)
    {
        $article = $this->model->select("article.*, COUNT(like_article.`articleCode`) AS 'like', COUNT(comment_article.`articleCode`) AS 'comment'")->join("like_article", "like_article.`articleCode`=article.`articleCode`", "left")->join("comment_article", "like_article.`articleCode`= comment_article.`articleCode`", "left")->groupBy("article.`articleCode`")->where(['article.articleCode' => $id])->findAll();
        if ($article) {
            $data = $article;
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

    public function newArticle($limit = 0)
    {
        $article = $this->model->select("article.*, COUNT(like_article.`articleCode`) AS 'like', COUNT(comment_article.`articleCode`) AS 'comment'")->join("like_article", "like_article.`articleCode`=article.`articleCode`", "left")->join("comment_article", "like_article.`articleCode`= comment_article.`articleCode`", "left")->groupBy("article.`articleCode`")->orderBy('article.articleCode', 'DESC')->findAll($limit);
        $data = $article;

        return $this->respond($data, 200);
    }
}
