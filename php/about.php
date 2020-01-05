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
   <h1 style="color:white">Lorem ipsum dolor sit amet.</h1>
        <div class="text">
        <section>
        <img style="width:50%" src="../images/wb.svg" alt="">
        <h1>Webdevs</h1>
        <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Perspiciatis, voluptatum.</p>
        </section>
        <section>
        <img style="width:50%" src="../images/cto.svg" alt="">
        <h1>Analists</h1>
        <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Perspiciatis, voluptatum.</p>        </section>
        <section>
        <img style="width:50%" src="../images/supp.svg" alt="">
        <h1>IT support</h1>
        <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Perspiciatis, voluptatum.</p>        </section>
        </div>  
</div>
 <?php echo file_get_contents("../html/footer.html");?>
</body>
</html>