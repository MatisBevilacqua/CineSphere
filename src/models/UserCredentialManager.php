<?php

namespace Streaming\models;

class UserCredentialManager
{
    private $connexion;

    public function __construct()
    {
        $this->connexion = new \PDO('mysql:host=' . HOST . ';dbname=' . DATABASE . ';charset=utf8;', USER, PASSWORD);
        $this->connexion->setAttribute(\PDO::ATTR_ERRMODE, \PDO::ERRMODE_EXCEPTION);
    }

    public function registerCredential(UserCredential $credential)
    {
        $stmt = $this->connexion->prepare("INSERT INTO userCredentials (userId, credential, response, created) VALUES (?,?,?,?)");
        $stmt->execute(array(
            $credential->getUserId(),
            $credential->getCredential(),
            $credential->getResponse(),
            $credential->getCreated()
        ));
    }

    public function verifyCredential(UserCredential $userCredential)
    {
        $stmt = $this->connexion->prepare("SELECT * FROM userCredentials WHERE credential = ? AND userId = ?");
        $stmt->execute(array(
            $userCredential->getCredential(),
            $userCredential->getUserId()
        ));
        return $stmt->fetchObject(UserCredential::class);
    }
}