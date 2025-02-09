<?php
include_once "commande.php";
require_once "connexion.php";
  class crud_commande{
       private $pdo;
       function __construct()
       {
        $connexion=new connexion();
        $this->pdo=$connexion->getConnexion();
       }
       function add_user(commande $commande){
        $client=$commande->getClient();
        $nbproduit=$commande->getNbproduit(); 
        $prix=$commande->getPrix();
        $sql="insert into commande values(null,'$client',$nbproduit,$prix);";
        $res=$this->pdo->exec($sql);
        return $res;
   }
        function delete($id){
          $sql="delete from commande where id=$id";
          $res=$this->pdo->exec($sql);
          return $res;
        }
        function find($id){
           $sql="select * from commande where id=$id";
           $res=$this->pdo->query($sql);
           return ($res->fetch(PDO::FETCH_NUM));
        }
        function findAll(){
             $sql="select * from commande";
             $res=$this->pdo->query($sql);
             return $res->fetchAll(PDO::FETCH_NUM);
        }
    }