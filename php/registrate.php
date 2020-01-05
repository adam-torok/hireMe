
<?php
include_once("../config/config.php");

if(!empty($_POST['username'])){
        $username = $_POST['username'];
        $password = $_POST['password'];
        $email = $_POST['email'];
        $stmt = $conn -> prepare("INSERT INTO users (username, password, email) VALUES (?, ?, ?)");
        $stmt -> bind_param("sss", $username, $password , $email);
        if ($stmt -> execute()) {
            header("Location: login.php");
        }
        $stmt -> close();
        $conn -> close();
}

?>
<?php echo file_get_contents("../html/head.html");?>
<body>
<?php echo file_get_contents("../html/header.html");?>
<?php echo file_get_contents("../html/regform.html");?>
<?php echo file_get_contents("../html/footer.html");?>
</body>
<script>
var userCheck = false;
var passwordCheck = false;
var emailCheck = false;
function CheckUser(){
    var length = document.getElementById('username').value.length;
    if(length < 5){
        console.log("Nem elég hosszú");
        document.getElementById('userErrorMessage').style.display = "block";
        userCheck = false;
    }
    else{
        document.getElementById('userErrorMessage').style.display = "none";
        userCheck = true;
    }
}
function CheckPassword(){
    var length = document.getElementById('password').value.length;
    if(length < 8){
        console.log("Nem elég hosszú jelszó");
        document.getElementById('passwordErrorMessage').style.display = "block";
        passwordCheck = false;
    }
    else{
        document.getElementById('passwordErrorMessage').style.display = "none";
        passwordCheck = true;
    }
}
function checkEmail(){
    return true;
    // - kell még email valid.
}
function checkCredentials(){
    if(userCheck == true && passwordCheck == true ){
        return true;
    }
    else{
        document.getElementById('submitErrorMessage').style.display = "block";
        return false;
    }
}
</script>
</html>
