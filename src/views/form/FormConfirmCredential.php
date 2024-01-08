<?php
include VIEWS . 'Header.php';
?>

<form method="post" action="/auth/credential/confirm">
    <div class="container layout-1">
        <h2 class="container_title">Vérifiez vos mails !</h2>
        <p class="container_sub">Entrez le code à 6 chiffres</p>
        <input type="numer" placeholder="Entrez le code à 6 chiffres" name="credential">
        <button class="container_button">Valider</button>
    </div>
</form>
