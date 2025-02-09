<?php
    require_once "../../modéle/crud_produit.php";
    
    $id=$_GET['id'];
    $crud=new crud_produit();
    $res=$crud->delette($id);
    if($res){
       header("location:../../controlleur/user/panier.php");exit;}

    else{
        echo"problem de supression !!!!!";
    }

?>