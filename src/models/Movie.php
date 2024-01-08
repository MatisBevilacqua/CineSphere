<?php

namespace Streaming\models;

class Movie
{
    private $id;
    private $movieName;
    private $movieLink;
    private $movieDescription;
    private $movieImg;
    private $movieStream;

    public function __construct()
    {
    }

    public function setId($id)
    {
        $this->id = $id;
    }

    public function getId()
    {
        return $this->id;
    }

    public function setMovieName($movieName)
    {
        $this->movieName = $movieName;
    }

    public function getMovieName()
    {
        return $this->movieName;
    }

    public function setMovieLink($movieLink)
    {
        $this->movieLink = $movieLink;
    }

    public function getMovieLink()
    {
        return $this->movieLink;
    }

    public function setMovieDescription($movieDescription)
    {
        $this->movieDescription = $movieDescription;
    }

    public function getMovieDescription()
    {
        return $this->movieDescription;
    }

    public function setMovieImg($movieImg)
    {
        $this->movieImg = $movieImg;
    }

    public function getMovieImg()
    {
        return $this->movieImg;
    }

    public function setMovieStream($movieStream)
    {
        $this->movieStream = $movieStream;
    }

    public function getMovieStream()
    {
        return $this->movieStream;
    }
}
