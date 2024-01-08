<?php
$linkCss = '';

$requestUri = $_SERVER['REQUEST_URI'];

if (preg_match('/\/movie\/\d+$/', $requestUri)) {
    $linkCss = '/movies/movieStreamProfile.css';
}

switch($_SERVER['REQUEST_URI']){
    case '/':
        $linkCss = '/welcome/welcome.css';
        break;

    case '/register':
        $linkCss = '/auth/register/register.css';
        break;

    case '/login':
        $linkCss = '/auth/login/login.css';
        break;

    case '/register/submit':
        $linkCss = '/auth/register/register.css';
        break;

    case '/auth/credential':
        $linkCss = '/auth/register/register.css';
        break;

    case '/home':
        $linkCss = '/movies/moviesList.css';
        break;
}


?>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8"> <!--Meta-->
    <meta name="description" content="">
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>CineSphere</title>
    <link rel="stylesheet" href='<?php echo CSS . 'header.css' ?> '>
    <link rel="stylesheet" href='<?php echo CSS . 'style.css' ?> '>
    <link rel="stylesheet" href='<?php echo CSS . $linkCss ?>'>
</head>
<body>
<header>
    <nav>

        <a href="/home">
            <img src="<?php echo IMG . "/icon/home.png"; ?>" alt="icon du profile" class="header_nav_icon_account" />
        </a>
        
        <a href="/account">
            <img src="<?php echo IMG . "/icon/account.png"; ?>" alt="icon du profile" class="header_nav_icon_account" />
        </a>


        <a class="show_search_page">
            <img src="<?php echo IMG . "/icon/search.png"; ?>" alt="icon du profile" class="header_nav_icon_account" />
        </a>

    </nav>
</header>



