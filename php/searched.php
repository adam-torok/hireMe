<?php
session_start();
include_once('../config/config.php');
include_once("../html/head.html");
include_once("../html/header-in.html");
if(!isset($_SESSION['logged'])){
  header("Location: ../html/index.html");
}
$sid = $_GET['id'];
$categoryName = "";
$sql = "SELECT * FROM categories WHERE id = '$sid'";
$result = mysqli_query($conn,$sql);
while($row = mysqli_fetch_assoc($result)){
  $categoryName = $row['name'];
};
$all = "";
$sql = "SELECT count(*) as total FROM employee";
$res = mysqli_query($conn,$sql);
while($row = mysqli_fetch_assoc($res)){
 $all  = $row['total'];
  }
if($sid == "all"){
  $toquery = "SELECT * FROM employee";
}
else{
  $toquery = "SELECT * FROM employee WHERE category_id = $sid";
}
$currjob = "";
$sql = "SELECT * FROM categories WHERE id = $sid";
    $result = mysqli_query($conn,$sql);
    while($row = mysqli_fetch_assoc($result)){
      $currjob = $row['name'];
    }
?>
<body>
  <div class="search-area-inner">
    <h1>Talált személyek</h1>
    <p>Jelenleg <?php echo$all?> személy keres állást oldalunkon</p>
    <p>Ők a talált személyek, akik alig várják már hogy munkába tudjanak állni.</p>
  </div>
  <div class="search-tag-container">
  <?php $sql = $toquery;
      $result = mysqli_query($conn,$sql);
      while($row = mysqli_fetch_assoc($result)){
        ?>
        <div data-person-id="<?php echo $row['id'];?>" class="card person animated fadeIn">
          <img src="<?php echo $row['path'];?><?php echo $row['filename'];?>">
          <p><?php echo $row['last_name'];?> <?php echo $row['first_name'];?></p>
          <p><?php echo $categoryName?></p>
          <p><?php echo $row['location'];?></p>
          <p><?php echo $row['work_exp'];?></p>
        </div>
        <?php
      }
      ?>
    </div>
</body>
<script src="../JS/jquery.js" charset="utf-8"></script>
<script type="text/javascript">
$("#back").click(function(){
  window.history.back();
})
$(".person").click(function(){
  let id = $(this).data("person-id");
  window.location.replace("searchedperson.php?person-id="+id);
});
</script>
<?php
echo file_get_contents("../html/footer.html");
$conn -> close();
?>
