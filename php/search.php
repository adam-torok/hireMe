<?php
    session_start();
    include_once('../config/config.php');
    echo file_get_contents("../html/head.html");
    echo file_get_contents("../html/header-in.html");
    if(!isset($_SESSION['logged'])){
      header("Location: ../html/index.html");
    }
?>
<style media="screen">
  p{
    font-size: 12px;
  }
</style>
<body>
  <div class="layout">
    </h1>
    <div class="search-area">
      <h1>Keress rá egy  munka-kategóriára</h1>
      <p>Ha rákeresel egy munkakategóriára, Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. kilistázzuk neked, az éppen aktuális munkakeresőket a választott szférában.</p>
      <a id="all" class="cta">Minden munkakereső mutatása</a>
      <form action="searchviafilter.php" method="post">
      <select name="filter">
        <option  value="na">Pályakezdő</option>
        <option  value="zoldfulu">Zöldfülű</option>
        <option  value="tapasztalt">Tapasztalt</option>
      </select>
      <div class="filter">
        <input class="radio" type="radio" name="yearsold" value="25"><p>25 évnél öregebb</p>
        <input class="radio" type="radio" name="yearsold" value="50"><p>50 évnél fiatalabb</p>
      </div>
      <div class="filter">
        <input class="radio" type="checkbox" value="Szeged" name="location[]"><p>Szeged</p>
        <input class="radio" type="checkbox" value="Budapest" name="location[]"><p>Budapest</p>
        <input class="radio" type="checkbox" value="Szentes" name="location[]"><p>Szentes</p>
      </div>
      <p><i>Jelenleg ezekben a városokban tudunk keresni...</i></p>
      <button  class="cta" id="back" type="submit" name="button">Szűrés</button>
      </form>
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
  </div>
</body>
    <script src="../JS/jquery.js" charset="utf-8"></script>
    <script src="../JS/main.js" charset="utf-8"></script>
    <?php
    echo file_get_contents("../html/footer.html");
    $conn -> close();
?>
