<?php
    session_start();
    include_once('../config/config.php');
    echo file_get_contents("../html/head.html");
    echo file_get_contents("../html/header-in.html");
    ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);
    ?>
    <style media="screen">
      p{
        font-size: 12px;
      }
    </style>
    <body>
      <div class="search-area">
        <h1>Keressen rá egy kategóriára</h1>
        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
      </div>
      <div class="search-tag-container">
      <?php $sql = "SELECT * FROM categories;";
          $result = mysqli_query($conn,$sql);
          while($row = mysqli_fetch_assoc($result)){
            ?>
            <div data-id="<?php echo $row['id']?>" class="card">
              <img src="<?php echo $row['path'];?><?php echo $row['filename'];?>">
              <p><?php echo $row['name'];?></p>
            </div>
            <?php
          }
          ?>
        </div>
    </body>
    <script src="../JS/jquery.js" charset="utf-8"></script>
    <script src="../JS/main.js" charset="utf-8"></script>
    <?php
    echo file_get_contents("../html/footer.html");
    $conn -> close();
?>
