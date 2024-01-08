<?php
include VIEWS . 'Header.php';
?>

<form id="multiStepForm" method="post" action="/register/submit">
    <div class="progress progress_layout-1">
        <div class="progress-bar" style="width: 33.33%;"></div>
    </div>
    <div class="container layout-1 step">
        <h2 class="container_title">Bienvenue, nous avons besoin de votre adresse email</h2>
        <p class="container_sub">Entrez vos informations personnelles</p>
        <input type="email" placeholder="Adresse email" name="email">
        <button class="container_button next">Suivant</button>
    </div>

    <div class="container layout-2 step" style="display: none;">
        <h2 class="container_title left">Nous souhaitons en savoir davantage</h2>
        <p class="container_sub left">Entrez vos informations personnelles</p>
        <div class="container_group">
            <input type="text" placeholder="Nom" name="surname">
            <input type="text" placeholder="Prénom" name="name">
        </div>
        <input type="date" placeholder="Date de naissance" name="date">

        <select name="gender">
            <option value="men">Homme</option>
            <option value="woman">Femme</option>
        </select>
        <button class="container_button prev">Précédent</button>
        <button class="container_button next">Suivant</button>
    </div>

    <div class="container layout-3 step" style="display: none;">
        <h2 class="container_title left">N'oubliez pas de sécuriser votre compte</h2>
        <p class="container_sub left">Entrez vos informations personnelles</p>
        <input type="password" name="password" placeholder="Mot de passe">
        <input type="password" name="passwordConfirm" placeholder="Confirmer votre mot de passe">
        <button class="container_button prev">Précédent</button>
        <button class="container_button">S'inscrire</button>
    </div>
</form>


<?php
include VIEWS . 'Footer.php';
?>

