<?php
  ob_start();
  session_start();
  if (!isset($_SESSION['privilege'])) {
    header('Location: ../../view/user/connexion.php');
    exit;
  }

  if ($_SESSION['privilege'] != 'user') {
    header('Location: ../../');
    exit;
  }

  // Check if the user is logged in and has the correct privilege

?>

<table class="table">
    <thead>
        <tr>
            <th>identifiant</th>
            <th>libellé</th>
            <th>prix</th>
           
            <th>en promo</th>
            
            

        </tr>
    </thead> 
            <tbody>
            <?php
                foreach ($Lesproduits as $produit) {
                    ?>

                    <tr>
                        <td><?=$produit[0]?></td>
                        <td><?=$produit[1]?></td>
                        <td><?=$produit[2]?></td>
                        
                        <td><?php
        if($produit[6]==0)
        {
        ?>
        <span class="badge bg-success">en promotion</span>
        <?php ;}
        
        ?>   </td>
        <td><a href="delete.php?id=<?=$produit[0]?>" class="btn btn-danger btn-sm">supprimer</a></td>
                    </tr>
                    <?php
                }  
            ?>
        </tbody>
    </table>
    <div class="d-flex justify-content-between align-items-center p-3 ">
    <h4 class="mb-0">Prix Total: <span class="text-primary fw-bold"><?= number_format($pt[0], 2) ?> TND</span></h4>
    <a href="../../controlleur/user/commander.php" class="btn btn-danger btn-md">
        <i class="fas fa-shopping-cart"></i> Commander
    </a>
</div>

<?php
$contenu =ob_get_clean();
$titre="Votre panier";
include "layout.php"; ?>