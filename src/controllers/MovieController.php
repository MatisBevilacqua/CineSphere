<?php

namespace Streaming\controllers;
use Streaming\models\MovieManager;

class MovieController
{

    private $movieManager;

    public function __construct()
    {
        
        $this->movieManager = new MovieManager();
    }

    public function showMovie(){
        $results = $this->movieManager->getAllMovie();
        require VIEWS . '/movies/Home.php';
    }

    public function ShowProfileStream($id)
    {

        if(!isset($_SESSION['id'])){
            header('location: /login');
        }else{
            $results = $this->movieManager->getMovieById($id);
            require VIEWS . '/movies/ShowProfileStream.php';
        }

    }
}