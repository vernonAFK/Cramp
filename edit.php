<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Файл</title>

    <link rel="stylesheet" href="style.css">
</head>
<body>
    <div class="code">
    <?php
    $code = '<code><pre>' . htmlspecialchars($_POST['code']) . '</pre></code>';
    echo $code;
    ?>
    </div>
</body>
</html>