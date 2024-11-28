<?php
    ob_start();
    
?>
<div class="row">
    <div class="col-6">
        <div class="card">
        <img src="<?=$produit[5]?>" class="img-fluid" alt="">
        </div>  
    </div>
    <div class="col-6">
        <h3><?=$produit[1]?> (<?=$produit[3]?>DT)</h3>
        <p><?=$produit[4]?></p>
        <?php
        if($produit[6]==0)
        {
        ?>
        <span class="badge bg-success">en promotion</span>
        <?php ;}
        
        ?>
    </div>
</div>
 <?php
    $contenu=ob_get_clean();
                $titre="detail d'un produit";
                include "layout.php";?>