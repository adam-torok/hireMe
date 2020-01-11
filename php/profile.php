<?php
session_start();
//ini_set('display_errors', 1);
//ini_set('display_startup_errors', 1);
//error_reporting(E_ALL);
include_once("../config/config.php");
if(!isset($_SESSION['logged'])){
  header("Location: ../html/index.html");
}
?>
<?php include_once("../html/head.html");?>
<body>
<?php
if(!empty($_SESSION['username'])){
echo file_get_contents("../html/header-in.html");
?>

<div class="container">
  <div class="profile-card">
    <h1>Profil</h1>
    <i>Sajnáljuk, oldalunk jelenleg felújítás alatt áll. </i>
    <img style="padding:3rem;width:90%; height:40%" src="../images/data.svg" alt="">
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
