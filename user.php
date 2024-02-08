<?php
require_once('db.php');

$first_name = trim($_POST['first-name']);
$last_name = trim($_POST['last-name']);
$date = $_POST['date'];
$login = trim($_POST['login']);
$password = trim(password_hash($_POST['password'], PASSWORD_DEFAULT));
$email = trim($_POST['email']);
$userpic = time() . ($_FILES['userpic']['name']);

$sql = "SELECT `id` FROM `users` WHERE login = '$login' OR email = '$email'";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    echo "Такой пользователь уже зарегистрирован!";
    mysqli_close($conn);
    exit();
}

$sql = "INSERT INTO `users` (firstName, lastName, date, login, password, email) VALUES ('$first_name', '$last_name', '$date', '$login', '$password', '$email')";
$conn->query($sql);
mysqli_close($conn);

$uploaddir = "uploads/";
$uploadfile = $uploaddir . $userpic;

move_uploaded_file($_FILES['userpic']['tmp_name'], $uploadfile);
?>

<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CRAMP - Транслируйте себя</title>

    <link rel="stylesheet" href="style.css">
    <script src="main.js" defer></script>
</head>
<body>
    <? require_once("components/header.php"); ?>

    <main>
        <div class="user">
            <div class="photo">
                <img src=<? echo $uploadfile ?> alt="Фото">
            </div>
            <div class="last-name"><? echo $last_name ?></div>
            <div class="first-name"><? echo $first_name ?></div>
            <div class="date"><? echo $date ?></div>
            <div class="email"><? echo $email ?></div>
            <div class="subs">Подписок нет...</div>
        </div>
    </main>

    <? require_once("components/footer.php"); ?>
</body>
</html>