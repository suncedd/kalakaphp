<?php
require_once "db.php";
$stmt = $pdo->query("select * from month_tab, coming_tab, servis_tab");
$messages = $stmt->fetchAll();
?>
<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <title>Админка</title>
    <link rel="stylesheet" href="css/style.css">
    <style>
   table {
      border-collapse: collapse;
      width: 100%;
   }
   td,
   th {
      padding: 10px;
   }
</style>
</head>
<body>
    <div class="container">
        <h2>Сообщения</h2>
        <table border="1">
            <tr>
                <th>№</th>
                <th>ФИО</th>
                <th>Посещаемость</th>
                <th>Дополнительные услуги</th>
                <th>Месяц</th>
                <th>Стоимость</th>
            </tr>
            <?php foreach ($messages as $key => $message) : ?>
                <tr>
                    <!-- <td><?= $key + 1 ?></td> -->
                    <td><?= htmlspecialchars($message['id_month']) ?></td>
                    <td><?= htmlspecialchars($message['FIO']) ?></td>
                    <td><?= htmlspecialchars($message['kol']) ?></td>
                    <td><?= htmlspecialchars($message['nameServ']) ?></td>
                    <td><?= htmlspecialchars($message['name']) ?></td>
                    <td><?= htmlspecialchars($message['price']) ?></td>
                </tr>
            <?php endforeach; ?>           
        </table>
    </div>
    <pre>
        <?php
            print_r($messages);
        ?>
    </pre>
</body>
</html>