<?php
require_once "db.php";
$stmt = $pdo->query("select * from month_tab, coming_tab, servis_tab");
$date = $stmt->fetchAll();
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/style.css">
    <title>Document</title>
</head>
<body>
    <section class="section-bg">
        <div class="container">
            <div class="d-flex">
                <div class="w-40">
                    <form class="form" action="feedback.php"  method="POST">

                        <h2>Расчет стоимости</h2>

                        <h3>Месяц</h3> 
                        <select name="id_month" class="month-box">
                            <option  value="" disabled>Выбери</option>
                            <option value="1">Январь</option>
                            <option value="2">Февраль</option>
                            <option value="3">Март</option>
                            <option value="4">Апрель</option>
                            <option value="5">Май</option>
                            <option value="6">Июнь</option>
                            <option value="7">Июль</option>
                            <option value="8">Август</option>
                            <option value="9">Сентябрь</option>
                            <option value="10">Октябрь</option>
                            <option value="11">Ноябрь</option>
                            <option value="12">Декабрь</option>
                        </select>

                        <h3>Стоимость 1 дня</h3>
                        <input name="cost" class="cost" required readonly>

                        <h3>ФИО ребенка</h3>
                        <input name="FIO" class="FIO" required type="text">

                        <h3>Количество дней</h3>
                        <input name="kol" class="kol" required type="number">

                        <h3>Дополнительная услуга</h3>
                        <select name="id_services" class="service-box">
                            <option value="1">Каляка-Маляка</option>
                            <option value="2">Весёлый мяч</option>
                            <option value="3">Заводной слон</option>
                        </select>

                        <h3>Сумма к оплате за месяц</h3>
                        <input name="sum" class="sum" required readonly>

                        <p class="calc">Рассчитать</p>
                        <input class="btn btn-bg" type="submit" value="Сохранить">
                        
                    </form>
                </div>  
             </div>
        </div>
     </section>
     <script src = "main.js"></script>
</body>
</html>
