
<main>
    <form action="user.php" method="POST" enctype="multipart/form-data">
        <input type="text" name="first-name" placeholder="Имя" maxlength="30" required>
        <input type="text" name="last-name" placeholder="Фамилия" maxlength="30"required>
        <input type="date" name="date" id="date" required>
        <input type="text" name="login" placeholder="Логин" maxlength="30" required>
        <input type="password" name="password" placeholder="Пароль" maxlength="30" required>
        <input type="email" name="email" placeholder="Эл.почта" maxlength="45" required>
        <input type="file" name="userpic" accept="image/*" required>
        <input type="submit">
    </form>
</main>