<?php
ob_start();
?>
<a href="../../controlleur/admin/ajouter_produit.php" class="btn-secondary float-end btn-lg">Ajouter produit</a>
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
                        <td><a href="detail.php?id=<?=$produit[0]?>" class="btn btn-info btn-sm">voir detail...</a></td>
                        <td><a href="delete.php?id=<?=$produit[0]?>" class="btn btn-danger btn-sm">supprimer</a></td>
                        <td><a href="update.php?id=<?=$produit[0]?>" class="btn btn-dark btn-sm">Editer</a></td>
                    </tr>
                    <?php
                }
                
               
            ?>
        </tbody>
    </table>
    <?php
    $contenu=ob_get_clean();
                $titre="Liste des produits";
                include "layout.php";?>