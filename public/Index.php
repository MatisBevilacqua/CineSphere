<?php
session_start();

require '../src/config/Config.php';
require '../vendor/autoload.php';

$router = new Streaming\Router($_SERVER["REQUEST_URI"]);

$router->get('/', 'MainController@Index');
$router->get('/register','UserController@showRegisterMenu');
$router->get('/login','UserController@showLoginMenu');
$router->get('/home','MovieController@showMovie');
$router->get('/movie/:id','MovieController@ShowProfileStream');
$router->get('/stream/:id','MovieController@showMovieStream');
$router->get('/auth/credential','UserCredentialController@sendCredential');
$router->get('/account', 'UserController@getProfilById');


$router->post('/register/submit','UserController@registerStore');
$router->post('/login/submit','UserController@storeLogin');
$router->post('/auth/credential/confirm','UserCredentialController@confirmCredential');


$router->run();
