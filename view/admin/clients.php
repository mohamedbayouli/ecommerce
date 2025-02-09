<?php
ob_start();
session_start();
  

if($_SESSION['privilege']!='admin')
  header('location:../../');
?>


   
    <table class="table">
        <thead>
            <tr>
                <th>Username</th>
                <th>Password</th>
            </tr>
        </thead>
        <tbody>
            <?php foreach ($users as $user): ?>
                <tr>
                    <td><?php echo htmlspecialchars($user[1]); ?></td>
                    <td><?php echo htmlspecialchars($user[2]); ?></td>
                </tr>
            <?php endforeach; ?>
        </tbody>
    </table>
</body>
</html>
<?php
    $contenu=ob_get_clean();
                $titre="Liste des clients";
                include "layout.php";?>