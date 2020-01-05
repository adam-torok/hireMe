<?php
session_start();
include_once("../config/config.php");

if(isset($_POST['submit'])){
    if(isset($_POST['username'])){
        $username  = $_POST['username'];
        $password  = $_POST['password'];
        $_SESSION['logged'] = true;
    }
    $sql = "SELECT * FROM users WHERE username = '".$username."' AND password = '".$password."'";
    $res = $conn -> query($sql);
    if($res -> num_rows == 1){
        $_SESSION['username'] = $username;
        header("Location: index.php");
    }else {
        echo "Helytelen adatok";
        $_SESSION['logged'] = false;
        header("Location: registrate.php");
    }
}
?>
<?php
echo file_get_contents("../html/head.html");
?>
<body>
<?php echo file_get_contents("../html/header.html");?>
<?php echo file_get_contents("../html/loginform.html");?>
<?php echo file_get_contents("../html/footer.html");?>
</body>
</html>
