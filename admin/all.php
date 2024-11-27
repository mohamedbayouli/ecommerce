
    <?php
    ob_start();
    require_once "../classes/crud_produit.php";
    $crud=new crud_produit();
    
       
       $Lesproduits=$crud->findAll();
       
    ?>
    <table class="table">
        <tr>
            <th>identifiant</th>
            <th>libellé</th>
            <th>prix</th>
            <th>Qte</th>
            <th colspan="3">Action</th>
        </tr>
       
            
            <?php
                foreach ($Lesproduits as $produit) {
                    ?>
                    <tr>
                        <td><?=$produit[0]?></td>
                        <td><?=$produit[1]?></td>
                        <td><?=$produit[2]?></td>
                        <td><?=$produit[3]?></td>   
                        <td><a href="detial.php?id=<?=$produit[0]?>" class="btn btn-info btn-sm">voir detail...</a></td>
                        <td><a href="delete.php?id=<?=$produit[0]?>" class="btn btn-danger btn-sm">supprimer</a></td>
                        <td><a href="update.php?id=<?=$produit[0]?>" class="btn btn-dark btn-sm">Editer</a></td>
                    </tr>
                    <?php
                }
                
               
            ?>
        
    </table>
    <?php
    $contenu=ob_get_clean();
                $titre="Liste des produits";
                include "layout.php";?>