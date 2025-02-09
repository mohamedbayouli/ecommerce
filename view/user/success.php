<?php
ob_start();
?>
<p class='text-success'>inscription Réussie.
       tu peux maintenant <a href="connexion.php">se connecter</a>.</p>
    
</body>
</html>
<?php
$contenu = ob_get_clean();
$titre = "";
include "layout.php";
?>
