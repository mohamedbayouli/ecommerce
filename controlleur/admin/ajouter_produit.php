<?php
  ob_start();
    
  

  
   
    if(isset($_POST['ok'])){
    require_once "../../modéle/crud_produit.php";
    $crud=new crud_produit();
    $lib=htmlspecialchars($_POST['lib']);
    $pu=htmlspecialchars($_POST['pu']);
    $qte=htmlspecialchars($_POST['qte']);
    $des=htmlspecialchars($_POST['des']);
    $img=htmlspecialchars($_POST['img']);
    $pro=htmlspecialchars($_POST['pro']);
    $produit=new produit(null,$lib,$pu,$qte,$des,$img,$pro);
    $res=$crud->add($produit);
        if($res){
          header("location:findall.php");exit();}
     
           
    }
    else 
    include "../../view/admin/add.php"  
    

    ?>
