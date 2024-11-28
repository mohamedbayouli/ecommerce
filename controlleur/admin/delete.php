<?php
    require_once "../../modéle/crud_produit.php";
    
    $id=$_GET['id'];
    $crud=new crud_produit();
    $res=$crud->delete($id);
    if($res){
       header("location:findall.php?etat=1");exit;}

    else{
        echo"problem de supression !!!!!";
    }

?>