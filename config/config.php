<?php

$conn = new mysqli("localhost", "root", "qwert", "test");
if ($conn -> errno) {
    die("Hiba a kapcsolat létrehozásakor!");
}
if (!$conn ->set_charset("utf8")) {
    echo 'Nem sikerült beállítani a karakter kódolást!';
}
?>
