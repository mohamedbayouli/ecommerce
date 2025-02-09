<?php
include_once '../../modéle/crud_user.php';
if(isset($_POST['ok'])){
    $email=htmlspecialchars($_POST['email']);
    $pass=htmlspecialchars($_POST['password']);
    $crud=new crud_user();
    $p=$crud->find($email);
    if ($p==false or $p[2]!=$pass){
        header("Location:../../view/user/connexion.php?etat=1");
        exit;
    }
    else{
        if($p[3]=='admin'){
            session_start();
            $_SESSION['privilege']=$p[3];
            $_SESSION['username']=$p[1];
            header("Location:../../view/admin");
            exit;

        }
        else
            session_start();
            $_SESSION['privilege']=$p[3];
            $_SESSION['username']=$p[1];
            header("Location:../../");
            exit; 
    }
}