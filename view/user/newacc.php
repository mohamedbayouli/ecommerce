<?php
ob_start();
?>

<div class="container d-flex justify-content-center align-items-center min-vh-100">
    <div class="card shadow-lg p-4" style="width: 100%; max-width: 500px;">
        <h2 class="text-center mb-4">Créer un compte</h2>
        <form action="../../controlleur/user/newacc.php" method="post" id="signup" novalidate>
            <div class="mb-3">
                <label for="name" class="form-label">Nom</label>
                <input type="text" class="form-control" id="name" name="name" placeholder="Entrer votre nom">
            </div>

            <div class="mb-3">
                <label for="email" class="form-label">Email</label>
                <input type="email" class="form-control" id="email" name="email" placeholder="Entrer votre email">
            </div>

            <div class="mb-3">
                <label for="birthday" class="form-label">Date de naissance</label>
                <input type="date" class="form-control" id="birthday" name="birthday">
            </div>

            <div class="mb-3">
                <label for="password" class="form-label">Mot de passe</label> <?php if (isset($_GET['etat'])){
    if($_GET['etat']==2)
    echo '<p class="text-danger">';
}
?>
                (*)le mot doit contenir au moins 8 caractères et un chiffre.
               <?php 
               echo'</p>';?>

                
                <input type="password" class="form-control" id="password" name="password" placeholder="Entrer votre mot de passe">
            </div>

            <div class="mb-3">
                <label for="password_confirmation" class="form-label">Répéter le mot de passe</label>
                <input type="password" class="form-control" id="password_confirmation" name="password_confirmation" placeholder="Répéter votre mot de passe">
            </div>
            <?php 
if (isset($_GET['etat'])){
    if($_GET['etat']==1)
    echo '<p class="text-danger">Les deux mots de passe ne sont pas identiques.</p>';
}
?>
            <button type="submit" class="btn btn-primary w-100" name='ok'>s'inscrire</button>
        </form>
    </div>
</div>

<?php
$contenu = ob_get_clean();
$titre = "";
include "layout.php";
?>
