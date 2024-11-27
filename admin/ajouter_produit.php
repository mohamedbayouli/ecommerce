<?php
  ob_start();
  
  ?>
  <form action="<?=$_SERVER['PHP_SELF']?>" method="post" class="form-control">
    <label for="">libelle</label>
    <input type="text" name="lib" id=""class="form-control"><br>
    <label for="">prix unitaire</label>
    <input type="text" name="pu" id=""class="form-control"><br>
    <label for="">quantite</label>
    <input type="text" name="qte" id=""class="form-control"><br>
    <label for="">Description</label>
    <textarea name="des" id=""></textarea><br>
    <label for="">image</label>
    <input type="text" name="img" id=""class="form-control"><br>
    <label for="">promo</label>
    <input type="text" name="pro" value="0" id=""class="form-control"><br>
    <input type="submit" value="ajouter" name="ok" class="btn btn-success btn-lg"></form>
  <?php
   
    if(isset($_POST['ok'])){
    require_once "../classes/crud_produit.php";
    
    
    $crud=new crud_produit();
    $produit=new produit();
    $res=$crud->add($produit);
    }
        
        if($res)
           echo"insertion réussite";
        else
           echo"problem insertion";
           $contenu=ob_get_clean();
        $titre="ajout d'un produit";
       
        include "layout.php";
    

    ?>
