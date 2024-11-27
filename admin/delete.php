<?php
    require_once "../classes/crud_produit.php";
    
    $id=$_GET['id'];
    $crud=new crud_produit();
    $res=$crud->delete($id);
    if($res){
       header("location:all.php");exit;}

    else{
        echo"problem de supression !!!!!";
    }

?>