<?php
if (isset($_GET['id'])){
   $id=$_GET['id'];
   require_once "../../modéle/crud_produit.php";
   $crud=new crud_produit();  

   $produit=$crud->find($id);//un tableau de produit
    include "../../view/user/detail.php";
}