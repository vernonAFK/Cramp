<?php
$server = "localhost";
$username = "root";
$password = "root";
$dbname = "test";

$conn = mysqli_connect($server, $username, $password, $dbname);

if (!$conn) {
    die("Connection Error: " . mysqli_connect_error());
}