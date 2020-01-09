<?php
session_start();
include_once('../config/config.php');
include_once("../html/head.html");
include_once("../html/header-in.html");

if(!isset($_SESSION['logged'])){
  header("Location: ../html/index.html");
}

$mysqltime = date ("Y-m-d");
$sql = "SELECT * FROM employee";
$res = $conn -> query($sql);
while($row = $res -> fetch_assoc()){
  $myId = $row['category_id'];
}
if(isset($_POST['filter'])){
  if(isset($_POST['location'])){
  $sql = "SELECT * FROM employee WHERE";
  $searched_locs = $_POST['location'];
  $locations = array();
  foreach ($searched_locs as $loc) {
      $locations[] = " location LIKE '%$loc%'";
  }
  $real_location_array = implode(" OR ",$locations);
}
  if(!empty($real_location_array)){
          $sql .= $real_location_array;
  }
  else{
    $sql = "SELECT * FROM employee where 1+1=2";
  }
  if(isset($_POST['yearsold'])){
    switch ($_POST['yearsold']) {
      case '25':
        $sql .= " AND born BETWEEN '1995-00-00' AND '$mysqltime'";
        break;

      case '50':
      $sql .= " AND born BETWEEN '1970-00-00' AND '$mysqltime'";
      break;

      default:
        break;
    }
  }
  switch ($_POST['filter']) {
    case 'na':
      $sql .= " AND work_exp LIKE 'Pályakezdő'";
      break;

    case 'zoldfulu':
      $sql .= " AND work_exp LIKE'Zöldfülű'";
    break;

    case 'tapasztalt':
      $sql .= " AND work_exp LIKE 'Tapasztalt'";
    break;

    default:
      break;
  }
}
?>
<body>
  <div class="search-area-inner">
    <h1>Szűrt személyek</h1>
    <p>Ők a talált személyek, akik alig várják már hogy munkába tudjanak állni.</p>
    <a class="cta" id="back">Vissza</a>
  </div>
  <div class="search-tag-container">
    <?php
        $result = $conn -> query($sql);
        while($row = $result -> fetch_assoc()){
          $myID = $row['category_id']
          ?>
          <div data-person-id="<?php echo $row['id'];?>" class="card person animated fadeIn">
            <img src="<?php echo $row['path'];?><?php echo $row['filename'];?>">
            <p><?php echo $row['last_name'];?> <?php echo $row['first_name'];?></p>
            <p><?php echo $row['born'];?></p>
            <p><?php echo $row['location'];?></p>
            <p><?php
            $myID = $row['category_id'];
            $sql = "SELECT * from categories where id = $myID";
            $res = $conn -> query($sql);
            while($innerRow = $res -> fetch_assoc()){
              $myID = $innerRow['name'];
            }
            echo $myID;
            ?></p>
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
