<?php
include_once "user.php";
require_once "connexion.php";
  class crud_user{
       private $pdo;
       function __construct()
       {
        $connexion=new connexion();
        $this->pdo=$connexion->getConnexion();
       }
       function add_user(user $user){
            $username=$user->getUsername();
            $password=$user->getPassword();
            $sql="insert into users values(null,'$username','$password','user');";
            $res=$this->pdo->exec($sql);
            return $res;
       }
       function add_admin(user $user){
          $username=$user->getUsername();
          $password=$user->getPassword();
          $sql="insert into users values(null,'$username','$password','admin');";
          $res=$this->pdo->exec($sql);
          return $res;
     }
       function delete($id){
        $sql="delete from users where id=$id";
        $res=$this->pdo->exec($sql);
        return $res;
        
       }
       function find($id){
          $sql="select * from users where username='$id'";
          $res=$this->pdo->query($sql);
          return ($res->fetch(PDO::FETCH_NUM));
       }
       function findAll(){
            $sql="select * from users";
            $res=$this->pdo->query($sql);
            return $res->fetchAll(PDO::FETCH_NUM);
       }

  }