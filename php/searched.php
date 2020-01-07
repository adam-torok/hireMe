<?php
    session_start();
    include_once('../config/config.php');
    include_once("../html/head.html");
    include_once("../html/header-in.html");
    $sid = $_GET['id'];
    ?>
    <body>
      <div class="search-area">
        <h1>Talált személyek</h1>
        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
      </div>
      <div class="search-tag-container">
      <?php $sql = "SELECT * FROM employee WHERE category_id = $sid";
          $result = mysqli_query($conn,$sql);
          while($row = mysqli_fetch_assoc($result)){
            ?>
            <div data-id="<?php echo $row['id'];?>" class="card">
              <img src="<?php echo $row['path'];?><?php echo $row['filename'];?>">
              <p><?php echo $row['last_name'];?> <?php echo $row['first_name'];?></p>
              <p><?php echo $row['phone_num'];?></p>
              <p><?php echo $row['location'];?></p>
              <p><?php echo $row['work_exp'];?></p>
            </div>
            <?php
          }
          ?>
        </div>
    </body>
    <script src="../JS/jquery.js" charset="utf-8"></script>
    <?php
    echo file_get_contents("../html/footer.html");
    $conn -> close();
?>
