<?php
session_start();
include_once('../config/config.php');
include_once("../html/head.html");
include_once("../html/header-in.html");
if(!isset($_SESSION['logged'])){
  header("Location: ../html/index.html");
}
$personId = $_GET['person-id'];
$firstName = "";
$lastName = "";
$sql = "SELECT first_name, last_name, bio FROM employee WHERE id = $personId";
$result = $conn -> query($sql);
while($row = $result -> fetch_assoc()){
  $lastName = $row['last_name'];
  $firstName = $row['first_name'];
  $bio = $row['bio'];
}
?>
<body class="search-body">
  <div class="search-area-inner">
    <h1><?php echo $lastName." ".$firstName?></h1>
    <h6>Amit jó rolam tudni: </h6>
    <p style="max-width:50vw;text-align:left"><?php echo $bio;?></p>
  </div>
  <div class="search-tag-container">
  <?php $sql = "SELECT * FROM employee WHERE id = $personId";
      $result = $conn -> query($sql);
      while($row = $result -> fetch_assoc()){
        ?>
        <div data-person-id="<?php echo $row['id'];?>" class="person-container animated zoomInDown">
          <div>
            <img src="<?php echo $row['path'];?><?php echo $row['filename'];?>">
          </div>
          <div>
            <p>Teljes név: <?php echo $row['last_name'];?> <?php echo $row['first_name'];?></p>
            <p>Születési idő: <?php echo $row['born'];?></p>
            <p>Telefonszám: <?php echo $row['phone_num'];?></p>
            <p>Lakhely: <?php echo $row['location'];?></p>
            <p>Munkatapasztalat: <?php echo $row['work_exp'];?></p>
            <p>Email-cím: <?php echo $row['email'];?></p>
            <a class="sendemail" href = "mailto: <?php $row['email'];?>">Email küldése</a>
          </div>
        </div>
        <?php
      }
      ?>
    </div>
</body>
<script src="../JS/jquery.js" charset="utf-8"></script>
<script type="text/javascript">
$(".person").click(function(){
  let id = $(this).data("person-id");
  window.location.replace("searchedperson.php?person-id="+id);
});
</script>
<?php
include_once("../html/footer.html");
$conn -> close();
?>
