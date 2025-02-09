<?php
include_once "produit.php";
require_once "connexion.php";
  class crud_produit{
       private $pdo;
       function __construct()
       {
        $connexion=new connexion();
        $this->pdo=$connexion->getConnexion();
       }
       function add(produit $produit){
            $lib=$produit->getLibelle();
            $pu=$produit->getPrix();
            $qte=$produit->getQte();
            $des=$produit->getDes();
            $img=$produit->getImage();
            $pro=$produit->getPromo();
            $sql="insert into produit values(null,'$lib',$pu,$qte,'$des','$img',$pro);";
            $res=$this->pdo->exec($sql);
            return $res;
       }
       function add2(produit $produit){
          $lib=$produit->getLibelle();
          $pu=$produit->getPrix();
          $qte=$produit->getQte();
          $des=$produit->getDes();
          $img=$produit->getImage();
          $pro=$produit->getPromo();
          $sql="insert into panier values(null,'$lib',$pu,$qte,'$des','$img',$pro);";
          $res=$this->pdo->exec($sql);
          return $res;
     }
       function delete($id){
        $sql="delete from produit where id=$id";
        $res=$this->pdo->exec($sql);
        return $res;
       }
       function find($id){
          $sql="select * from produit where id=$id";
          $res=$this->pdo->query($sql);
          return ($res->fetch(PDO::FETCH_NUM));
       }
       function findAll(){
            $sql="select * from produit";
            $res=$this->pdo->query($sql);
            return $res->fetchAll(PDO::FETCH_NUM);
       }
       function findAllpanier(){
          $sql="select * from panier";
          $res=$this->pdo->query($sql);
          return $res->fetchAll(PDO::FETCH_NUM);
     }
     function delette($id){
          $sql="delete from panier where id=$id";
          $res=$this->pdo->exec($sql);
          return $res;
         }
         function sum(){
          $sql="select sum(prix) from panier";
          $res=$this->pdo->query($sql);
          return ($res->fetch(PDO::FETCH_NUM));
       }
       function deleteall(){
          $sql="delete from panier";
          $res=$this->pdo->exec($sql);
          return $res;
         }
       function count(){
          $sql="select count(*) from panier";
          $res=$this->pdo->query($sql);
          return ($res->fetch(PDO::FETCH_NUM));
       }
  }