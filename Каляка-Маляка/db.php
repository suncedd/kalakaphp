<?php
$pdo = new PDO('mysql:host=localhost:3306; dbname=kalyakamalyaka; charset=utf8', 'root', 'root', [
    PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC
]);