<?php
include VIEWS . 'Header.php';
$id = $results->getId();
?>


<div class="show_profile_stream_container">
    <img src="<?php echo $results->getMovieImg(); ?>" class="show_profile_stream_container_img" alt="image du film"/>
    <div class="show_profile_stream_container_button">
        <a class="show_profile_stream_container_button_play">
            <div class="show_profile_stream_container_button_click">
                <img src="<?php echo IMG . '/icon/play.png'; ?>" class="show_profile_stream_container_button_click_icon" alt="icon play"/>
            </div>
        </a>
    </div>
</div>

<div class="profil_container">
    <article class="profil">
        <h2 class="profil_title"><?php echo $results->getMovieName(); ?></h2>

        <p class="profil_description">
            <?php echo $results->getMovieDescription(); ?>
        </p>
    </article>
</div>


<div class="profil_stream">
    <a class="profil_stream_back">
        <img src="<?php echo IMG . '/icon/previous.png'; ?>" alt='retourner en arriere'/>
    </a>
    <iframe src="<?php echo $results->getMovieStream(); ?>" frameborder="0" width="660" height="437" scrolling="no" frameborder="0" allowfullscreen ></iframe>
</div>



<?php
    include VIEWS . 'Footer.php';
?>