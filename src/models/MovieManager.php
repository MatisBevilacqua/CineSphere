<?php
namespace Streaming\models;
class MovieManager {
    private $connexion;

    public function __construct()
    {
        $this->connexion = new \PDO('mysql:host=' . HOST . ';dbname=' . DATABASE . ';charset=utf8;', USER, PASSWORD);
        $this->connexion->setAttribute(\PDO::ATTR_ERRMODE, \PDO::ERRMODE_EXCEPTION);
    }

    public function getAllMovie()
    {
        $stmt = $this->connexion->prepare("SELECT * FROM movies ");
        $stmt->execute();
        return $stmt->fetchAll(\PDO::FETCH_CLASS, Movie::class);
    }

    public function getMovieById($id)
    {
        $stmt = $this->connexion->prepare("SELECT * FROM movies WHERE id = ?");
        $stmt->execute(array(
            $id
        ));
        return $stmt->fetchObject(Movie::class);
    }
}