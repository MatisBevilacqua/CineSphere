<?php
$linkJs = '';

$requestUri = $_SERVER['REQUEST_URI'];

if (preg_match('/\/movie\/\d+$/', $requestUri)) {
    $linkJs = '/movie/stream.js';
}


switch($_SERVER['REQUEST_URI']){
    case '/register':
        $linkJs = '/auth/register/register.js';
        break;

    case '/home':
        $linkJs = '/movie/home.js';
}

?>
<script src='<?php echo JS . $linkJs ?>'></script>
<Footer>
    <small>&copy; 2023 - CineSphere </small>
</Footer>
</body>
</html


