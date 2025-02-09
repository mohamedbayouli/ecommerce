<?php
  ob_start();
  session_start();
  if(isset($_SESSION['privilege']) and $_SESSION['privilege']!='user' )
    header('location:../../');
  ?>
<div class="row">
    <?php
    foreach ($Lesproduits as $produit) {
    ?>
        <div class="col-3">
            <div class="card">
                <img src="<?= $produit[5] ?>" class="img-fluid" alt="la photo du produit">
                <div class="card-body">
                    <h1 class="card-title"><?= $produit[1] ?></h1>
                    <p class="card-text">Prix: <?= $produit[2] ?></p>
                    <a href="../../controlleur/user/detail.php?id=<?= $produit[0] ?>" class="btn btn-success btn-sm">Détail</a>
                    <a href="<?php echo '../../controlleur/user/ajout.php?id=' . $produit[0]; ?>"
    
    class="btn btn-primary btn-sm"><i class="fas fa-shopping-cart"></i>Ajouter</a>
                </div>


            </div>
        </div>
    <?php } ?>
</div>
    

    </div>
</div>
</body>
</html>
<?php
$contenu =ob_get_clean();
$titre="Liste de produits ";
include "layout.php"; ?>