<?php
   require_once "../../modéle/crud_produit.php";
   require_once "../../modéle/commande.php";
   require_once "../../modéle/crud_commande.php";
   session_start();
   $crud=new crud_produit();
   $com=new crud_commande();
   $nprod=$crud->count();
   $prix=$crud->sum();

   $client=$_SESSION['username'];
   
   
   $commande=new commande($client,$nprod[0],$prix[0]);
   $com->add_user($commande);

   $crud->deleteall(); 
   header("Location:../..");
   exit();