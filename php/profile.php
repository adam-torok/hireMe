<?php
session_start();
//ini_set('display_errors', 1);
//ini_set('display_startup_errors', 1);
//error_reporting(E_ALL);
include_once("../config/config.php");
    if (!empty($_SESSION['username'])) {
        $username = $_SESSION['username'];
        }
?>
<?php
echo file_get_contents("../html/head.html");
?>  
<body>
<?php 
if(!empty($_SESSION['username'])){
echo file_get_contents("../html/header-in.html");
?>
<div class="container">
<div class="profile-card">
<h1>Profile</h1>
<p>name: <?php echo $username?></p>
<img style="width:90%; height:50%" src="../images/users.svg" alt="">
</div>
</div>
<?php echo file_get_contents("../html/footer.html");?>
<?php }
else{
    echo file_get_contents("../html/header.html");
}
?>

</body>
</html>