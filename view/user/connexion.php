<?php
  ob_start();
  ?>
<div class="container d-flex justify-content-center align-items-center mt-5">

<div class="card shadow-lg p-4" style="width: 100%; max-width: 500px;">
    <h1 class="text-center mt-4">se connecter</h1>
    <?php
    if (isset($_GET['etat'])){
    if($_GET['etat']==1)
    echo '<p class="text-danger">l\'email ou le mot de passe est incorrect</p>';
}
?>
    <form method="post" action='../../controlleur/user/connexion.php'>
        <div class="mb-3">
            <label for="email" class="form-label">Email</label>
            <input type="email" class="form-control" name="email" id="email" placeholder="entrer votre email" required>
        </div>
        <div class="mb-3">
            <label for="password" class="form-label">Password</label>
            <input type="password" class="form-control" name="password" id="password" placeholder="Entrer votre mot de passe" required>
        </div>
        <button type="submit" class="btn btn-primary w-100" name="ok">se connecter</button>
    </form>
</div>
</div>
</body>
</html>
<?php
$contenu = ob_get_clean();
$titre = "";
include "layout.php";
?>
