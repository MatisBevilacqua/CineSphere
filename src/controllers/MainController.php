<?php

namespace Streaming\controllers;

class MainController
{
    public function index(){

        if(isset($_SESSION['id'])){
            header('location: /home');
        }else{
            require VIEWS . 'Welcome.php';
        }

    }
}