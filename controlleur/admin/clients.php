<?php
    //controller communique avec le model
    require_once "../../modéle/crud_user.php";
    $crud=new crud_user();  

    $users=$crud->findAll();//un tableau de produit
    //transmettre le résultat à la vue view/admin/findall.php
    include "../../view/admin/clients.php";
   
?>
   