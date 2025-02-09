<?php
  ob_start();
  session_start();
  if($_SESSION['privilege']!='admin')
    header('location:../../');
  ?>
  <form action="../../controlleur/admin/ajouter_produit.php" method="post" class="form-control">
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
           $contenu=ob_get_clean();
        $titre="ajout d'un produit";
       
        include "../../view/admin/layout.php";
    

    ?>
