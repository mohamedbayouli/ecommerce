<?php

   require_once "../../modéle/crud_produit.php";
   $crud=new crud_produit();  
   $id=$_GET['id'];
   $produit=$crud->find($id);//un tableau de produit
   require_once "../../modéle/crud_produit.php";
    $crud=new crud_produit();
    $lib=$produit[1];
    $pu=$produit[2];
    $qte=$produit[3];
    $des=$produit[4];
    $img=$produit[5];
    $pro=$produit[6];
    $produit1=new produit(null,$lib,$pu,$qte,$des,$img,$pro);
   $h=$crud->add2($produit1);
  
   header("location:../../controlleur/user/findall.php");
   exit;
