<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Редактор</title>

    <link rel="stylesheet" href="style.css">
</head>
<body>
    <div class="buttons">
        <a href="editor.php?what=header">header</a>
        <a href="editor.php?what=links">links</a>
        <a href="editor.php?what=content">content</a>
        <a href="editor.php?what=footer">footer</a>
    </div>

    <form action="edit.php" method="POST">
        <textarea name="code" cols="30" rows="10">
            <?php
            require_once("db.php");

            $sql = "SELECT * FROM `template`";
            $result = $conn->query($sql);

            while ($result = mysqli_fetch_array($result)) {

                switch($_GET['what']) {
                    case "header":
                        echo $result[1];
                        break;

                    case "links":
                        echo $result[2];
                        break;

                    case "content":
                        echo $result[3];
                        break;

                    case "footer":
                        echo $result[4];
                        break;
                }
                break;
            }
            mysqli_close($conn);
            ?>
        </textarea>
        <input type="submit" value="Сохранить">
    </form>
</body>
</html>