<?php
include VIEWS . 'Header.php';

$contenue = '';

foreach($results as $result){
    $contenue.= "
    <div class='movie_wrap_content'>
        <a href='/movie/" . $result->getId() . "'>
            <img src='". $result->getMovieImg() . "' alt='image du film' class='movie_wrap_content_img' />
        </a>
    </div>
    ";
}

?>

<div class="movie_wrap">
    <?php echo $contenue; ?>
</div>


<div class="movie_search">
    <input type="text" placeholder="Rechercher">
</div>

<?php
    include VIEWS . 'Footer.php';
?>