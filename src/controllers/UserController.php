<?php

namespace Streaming\controllers;

use Streaming\models\User;
use Streaming\models\UserManager;

use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;

use Streaming\controllers\UserCredentialController;

require '../vendor/autoload.php';

class UserController 
{
    private $userManager;

    public function __construct()
    {
        
        $this->userManager = new UserManager();
    }
    public function showRegisterMenu() {
        require VIEWS . '/form/FormCreateUser.php';
    }
    public function showLoginMenu() {
        require VIEWS .'/form/FormLoginUser.php';
    }
    public function showHomeMenu() {
        require VIEWS .'/SwipePage.php';
    }

    public function registerStore(){
        $email = $_POST['email'];
        $gender = $_POST['gender'];
        $date = $_POST['date'];
        $name = $_POST['name'];
        $surname = $_POST['name'];
        $password = $_POST['password'];

        if(!$this->userManager->isEmailExists($email)){
            $user = new User();
            $user->setGender($gender);
            $user->setBirthday($date);
            $user->setEmail($email);
            $user->setPassword($password);
            $user->setRole(0);

            $lastId = $this->userManager->registerStore($user);
            $_SESSION['id'] = $lastId;
            $_SESSION['email'] = $email;
            header("location: /auth/credential");
        }else{
            header("location: /login");
        }
    }

    public function storeLogin()
    {
        $email = $_POST['email'];
        $password = $_POST['password'];

        $user = new User();
        $user->setEmail($email);
        $user->setPassword($password);

        $result = $this->userManager->loginStore($user);

        $_SESSION['id'] = $result->getUserId();
        $_SESSION['email'] = $result->getEmail();

        if($result->getCredential() == 0){
            header("location: /auth/credential");
        }else{
            header("location: /home");
        }
    }

    public function updateCredential($id)
    {
        $this->userManager->updateCredential($id);
        header("location: /home");
    }


    public function getProfilById()
    {
        if(!isset($_SESSION['id'])){
            header('location: /login');
        }else{
            $results = $this->userManager->getProfileById($_SESSION['id']);
            var_dump($results);
            require VIEWS . '/user/Account.php';
        }
    }
}
?>