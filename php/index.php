<?php
    session_start();
    include_once('../config/connect.php');
    echo file_get_contents("../html/header-in.html");
    echo file_get_contents("../html/head.html");  
    if (isset($_SESSION['username']) && (!empty($_SESSION['username']))){
        echo "<br><h1 style='text-align:center;color:white'>Üdvözöllek kedves " . $_SESSION['username'] . "</h2>";
    }
    echo file_get_contents("../html/body-in.html");    
    echo file_get_contents("../html/footer.html");    
    $conn -> close();
?>