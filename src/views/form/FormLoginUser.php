<?php
include VIEWS . 'Header.php';
?>

<div class="container">
    <div class="container_part bg">

    </div>

    <div class="container_part log">
        <h2 class="log_title">Hey !</h2>
        <p class="log_sub">CineSphere est ravis de vous revoir.</p>
        <form method="post" action="/login/submit">
            <input type="email" placeholder="Adresse email" name="email">
            <input type="password" placeholder="Mot de passe" name="password">
            <button type="submit" value="valider">Se connecter</button>
        </form>
    </div>
</div>