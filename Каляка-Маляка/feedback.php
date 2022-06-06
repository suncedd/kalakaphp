<?php
require_once "db.php";

if(!empty($_POST['id_month']) && !empty($_POST['FIO']) && !empty($_POST['kol']) && !empty($_POST['id_services']) && !empty($_POST['sum']))
{
   $stmt = $pdo->prepare("insert into coming_tab(id_month, FIO, kol, id_services, cost) values(?,?,?,?,?)");   
   $stmt->execute([
        $_POST['id_month'],
        $_POST['FIO'],
        $_POST['kol'],
        $_POST['id_services'],
        $_POST['sum']
   ]);
}
header("Location: admin.php");