<?php
namespace Streaming\models;
class UserManager {
    private $connexion;

    public function __construct()
    {
        $this->connexion = new \PDO('mysql:host=' . HOST . ';dbname=' . DATABASE . ';charset=utf8;', USER, PASSWORD);
        $this->connexion->setAttribute(\PDO::ATTR_ERRMODE, \PDO::ERRMODE_EXCEPTION);
    }

    public function registerStore(User $user)
    {
        $stmt = $this->connexion->prepare("INSERT INTO users (email, surname, name, gender, birthday, password, role, picture, description, work, height, credential) VALUES (?,?,?,?,?,?,?,?,?,?,?,?)");
        $stmt->execute(array(
            $user->getEmail(),
            'Test',
            'Test',
            $user->getGender(),
            $user->getBirthday(),
            $user->getPassword(),
            $user->getRole(),
            'Test',
            'Test',
            'Test',
            120,
            0
        ));
        return $this->connexion->lastInsertId();
    }

    public function loginStore(User $user)
    {
        $stmt = $this->connexion->prepare("SELECT * FROM users WHERE email = ? AND password = ?");
        $stmt->execute(array(
            $user->getEmail(),
            $user->getPassword()
        ));

        return $stmt->fetchObject(User::class);
    }

    public function isEmailExists($email)
    {
        $stmt = $this->connexion->prepare("SELECT COUNT(*) FROM users WHERE email = ?");
        $stmt->execute([$email]);
        $count = $stmt->fetchColumn();
        return $count > 0;
    }

    public function updateCredential($id)
    {
        $stmt = $this->connexion->prepare("UPDATE users SET credential = 1 WHERE userId = ?");
        $stmt->execute(array(
            $id
        ));
    }

    public function getProfileById($id)
    {
        $stmt = $this->connexion->prepare("SELECT * FROM users WHERE userId = ?");
        $stmt->execute(array(
            $id
        ));

        return $stmt->fetchObject(User::class);
    }
}