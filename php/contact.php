<?php
echo file_get_contents("../html/head.html");
?>
<body>
<?php echo file_get_contents("../html/header.html"); ?>
<style>
.container{
        flex-direction:column;
}
.contact{
  background: white;
  -webkit-transform: skew(0deg, -5deg);
  transform: skew(0deg, -5deg);
  margin-top:100px;
  margin-bottom:100px;
  height:200px;
  padding: 100px 0;
}
.content{
  text-align:center;
  -webkit-transform: skew(0deg, 5deg);
  transform: skew(0deg, 5deg);
}
</style>

    <div class="container">
        <div class="text">
        <section>
          <img src="../images/take_a_note_2.svg" alt="">
    <br>
        Lorem ipsum, dolor sit amet consectetur adipisicing elit.
        <br> Nobis rerum soluta voluptate temporibus fuga dicta ad in eum, iusto excepturi debitis ipsa laboriosam reiciendis ut facere deleniti consectetur distinctio minima.
        </section>
        <section>
          <img src="../images/take_a_note_2.svg" alt="">

<br>
        Lorem ipsum, dolor sit amet consectetur adipisicing elit.
        <br> Nobis rerum soluta voluptate temporibus fuga dicta ad in eum, iusto excepturi debitis ipsa laboriosam reiciendis ut facere deleniti consectetur distinctio minima.
        </section>
        <section>
          <img src="../images/take_a_note_2.svg" alt="">

<br>
        Lorem ipsum, dolor sit amet consectetur adipisicing elit.
        <br> Nobis rerum soluta voluptate temporibus fuga dicta ad in eum, iusto excepturi debitis ipsa laboriosam reiciendis ut facere deleniti consectetur distinctio minima.
        </section>
        </div>
</div>
<div class="contact">
        <div class="content">
        <h1>Contact</h1>
<p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Praesentium, error.</p>
<li><i>+53252353</i> </li>
<li><i>6725 Szeged Sehol utca 72.</i> </li>
        </div>
</div>


 <?php echo file_get_contents("../html/footer.html");?>
</body>
</html>
