
<?php

    //controller communique avec le model
    require_once "../../modéle/crud_produit.php";
    $crud=new crud_produit();  
    $pt=$crud->sum();
    $Lesproduits=$crud->findAllpanier();//un tableau de produit
    //transmettre le résultat à la vue view/admin/findall.php
    include "../../view/user/panier.php";
   
?>