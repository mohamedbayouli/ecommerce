<?php
  ob_start();
  session_start();
  if($_SESSION['privilege']!='admin')
    header('location:../../');
  ?>
<table class="table">
    <thead>
        <tr>
            <th>identifiant</th>
            <th>libellé</th>
            <th>prix</th>
            <th>Qte</th>
            <th>Action</th>
            <th></th>
            <th></th>

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
                        <td><?=$produit[3]?></td>   
                        <td><a href="delete_commande.php?id=<?=$produit[0]?>" class="btn btn-danger btn-sm">supprimer</a></td>
                    </tr>
                    <?php
                }  
            ?>
        </tbody>
    </table>
    <?php
    $contenu=ob_get_clean();
                $titre="Liste des commandes";
                include "layout.php";?>