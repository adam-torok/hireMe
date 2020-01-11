<?php
  session_start();
  include_once('../config/config.php');
  include_once("../html/head.html");
  include_once("../html/header-in.html");
  if(!isset($_SESSION['logged'])){
    header("Location: ../html/index.html");
  }
?>
<body>
  <div class="wrapper">
    <div class="grid-container">
      <div class="landing-right">
        <h1 class="animated bounceInUp faster">Pontos találatok gyorsan és egyszerűen!</h1>
        <h4 class="animated bounceInUp fast">A hireMe segít megtalálni a tökéletes munkakeresőt! Interjú nélkül, gyorsan, megbízhatóan, biztosan!
        <br>
        Keresse meg álmai munkatársát.
        </h4>
      </div>
      <div class="landing-about">
        <img style="width: 100%;height: 366px;" src="../images/data 2.svg" alt="">
      </div>
    </div>
    <div class="grid-container">
      <div class="landing-right">
        <h1 class="animated bounceInUp faster">hireMe</h1>
        <h4 class="animated bounceInUp fast">A hireMe segít megtalálni a tökéletes munkakeresőt! Interjú nélkül, gyorsan, megbízhatóan, biztosan!
          <br>
          Keresse meg álmai munkatársát.
        </h4>
        <a style="width:200px;align-self:center" class="animated bounceInUp slow cta" href="../php/search.php">Keresés indítása!</a>
      </div>
    </div>
  </div>
</body>
<?php
include_once("../html/footer.html");
$conn -> close();
?>
