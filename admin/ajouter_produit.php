<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <?php
        include_once "../connexion.php";
        $sql="insert into produit values(NULL,'Cable rj45',1.5,2000,'mlkjhgfdsq','https://picsum.photos/200/200',1)";
        //envoi des requéte
        $connexion=new connexion();
        $pdo=$connexion->getConnexion();
        $res=$pdo->exec($sql);
        if($res)
           echo"insertion réussite";
        else
           echo"problem insertion";


    ?>
</body>
</html>