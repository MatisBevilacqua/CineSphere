<?php

namespace Streaming\controllers;
use Streaming\Models\UserCredential;
use Streaming\Models\UserCredentialManager;
use Streaming\controllers\UserController;
use Streaming\models\UserManager;
use PHPMailer\PHPMailer\Exception;
use PHPMailer\PHPMailer\PHPMailer;

class UserCredentialController
{

    private $userCredentialManager;

    public function __construct()
    {

        $this->userCredentialManager = new UserCredentialManager();
    }

    public function sendCredential()
    {
        var_dump($_SESSION);
        require VIEWS . '/form/FormConfirmCredential.php';

        $email = $_SESSION['email'];

        $mail = new PHPMailer(true);
        try {
            $mail->isSMTP();
            $mail->Host = 'smtp.gmail.com';
            $mail->SMTPAuth = true;
            $mail->Username = 'numerisediapositive@gmail.com';
            $mail->Password = 'iuaxvrytneeuqamt';
            $mail->SMTPSecure = PHPMailer::ENCRYPTION_SMTPS;
            $mail->Port = 465;

            $mail->setFrom('numerisediapositive@gmail.com', 'CineSphere');
            $mail->addAddress($email);

            $randomCredential = mt_rand(10000, 99999);

            $mail->isHTML(true);
            $mail->Subject = "Code d'anthentification";
            $mail->Body = $randomCredential;
            $mail->send();
            var_dump('test reçu');
            $userCredentialController = new UserCredentialController();
            $userCredentialController->storeCredential($_SESSION['id'], $randomCredential);
        } catch (Exception $e) {
            echo "Message could not be sent. Mailer Error: {$mail->ErrorInfo}";
        }
    }

    public function storeCredential($id, $randomCredential){
        $credential = new UserCredential();
        $credential->setUserId($id);
        $credential->setCredential($randomCredential);
        $credential->setResponse(0);
        var_dump('salut les amis');
        $timezone = new \DateTimeZone('Europe/Paris');
        $now = new \DateTime('', $timezone);
        $formatNow =  $now->format('Y-m-d H:i:s');
        $credential->setCreated($formatNow);

        $this->userCredentialManager->registerCredential($credential);
    }

    public function confirmCredential()
    {
        $credentialSecret = $_POST['credential'];
        $credential = new UserCredential();
        $credential->setCredential($credentialSecret);
        $credential->setUserId($_SESSION['id']);
        $result = $this->userCredentialManager->verifyCredential($credential);

        if($result !== false){
            $userController = new UserController();
            $userController->updateCredential($_SESSION['id']);
        }else{

        }
    }
}