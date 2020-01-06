<?php
echo file_get_contents("../html/head.html");
?>
<body>
<?php echo file_get_contents("../html/header.html"); ?>
<style>
.container{
        flex-direction:column;
}
</style>
    <div class="container">
   <h1>Lorem ipsum dolor sit amet.</h1>
        <div class="text">
        <section class="animated bounceInUp faster">
        <h1>Webdevs</h1>
        <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Perspiciatis, voluptatum.</p>
        </section>
        <section class="animated bounceInUp fast">
        <h1>Analists</h1>
        <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Perspiciatis, voluptatum.</p>        </section>
        <section class="animated bounceInUp slow">
        <h1>IT support</h1>
        <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Perspiciatis, voluptatum.</p>        </section>
        </div>
</div>
 <?php echo file_get_contents("../html/footer.html");?>
</body>
</html>
