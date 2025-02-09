<?php
include_once '../../modéle/crud_user.php';
if (isset($_POST['ok'])){
    $email=htmlspecialchars($_POST['email']);
    $p1=htmlspecialchars( $_POST['password']);
    $p2=htmlspecialchars( $_POST['password_confirmation']);
    if($p1!=$p2){
        header("Location:../../view/user/newacc.php?etat=1");exit;
    }
    else if (strlen($p1) <8 or !(preg_match('/\d/', $p1))){
        header("Location:../../view/user/newacc.php?etat=2");exit;
    }
    else{
        include_once '../../modéle/user.php';
        $u=new user($email,$p1);
        $crud=new crud_user();
        $x=$crud->add_user($u);
        header("Location:../../view/user/success.php");exit;
        
    }
}