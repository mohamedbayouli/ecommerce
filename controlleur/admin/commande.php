<?php
    require_once "../../modéle/crud_commande.php";
    $crud=new crud_commande();  
    $Lesproduits=$crud->findAll();
    include "../../view/admin/liste_commande.php";
?>
   