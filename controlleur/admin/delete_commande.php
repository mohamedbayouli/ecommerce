<?php
    require_once "../../modéle/crud_commande.php";
    
    $id=$_GET['id'];
    $crud=new crud_commande();
    $res=$crud->delete($id);
    if($res){
       header("location:commande.php?etat=1");exit;}

    else{
        echo"problem de supression !!!!!";
    }

?>