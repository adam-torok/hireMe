<?php
session_start();
    include_once('../config/config.php');
    $sql = "SELECT * FROM products";
    echo file_get_contents("../html/headbootstrap.html");
    echo file_get_contents("../html/header-in.html");
    if (!$_SESSION['logged'] == 'true'){
        header("Location: https://www.youtube.com/watch?v=dQw4w9WgXcQ");  
    }
    //echo file_get_contents("../html/body-in.html");
    if(isset($_GET['filtering'])){
        $query_by  = $_GET['filtering'];
        switch ($query_by) {
            case 'id':
                $sql .= " ORDER BY productCode";
                break;
            case 'name':
                $sql .= " ORDER BY productName";
                break;
            case 'type':
                $sql .= " ORDER BY productLine";
                break;
            case 'vendor':
                $sql .= " ORDER BY productVendor";
                break;
            case 'quantity':
                $sql .= " ORDER BY quantityInStock";
                break;
            case 'price':
                $sql .= " ORDER BY  buyPrice";
                break;
            default:
                
                break;
        }
        if(isset($_GET['order']) and $_GET['order'] == "asc"){
            $sql .= " ASC";
            echo $sql;

        }
        if(isset($_GET['order']) and $_GET['order'] == "desc"){
            
            $sql .= " DESC";
            echo $sql;

        }
    }
    $res = $conn -> query($sql);
    ?>
    <style>
        nav{
            display:auto!important;
        }
        input{
            width:auto;
            margin:1rem;
        }
        .container{
            height:auto;
        }
        .table{
            border-radius:25px;
        }
        form{
            padding-top:2rem;
            padding-bottom:2rem;
            display: grid;
            grid-auto-flow: column;
            grid-gap:1rem;
        }
    </style>
    <form action="<?php echo $_SERVER['PHP_SELF']; ?>" method="GET">
    <input type="text" name="searched" placeholder="Search...">
    <select name="filtering" id="">
            <option value="id">ID</option>
            <option value="name">Name</option>
            <option value="type">Type</option>
            <option value="vendor">Vendor</option>
            <option value="quantity">Quantity</option>
            <option value="price">Price</option>
        </select>
        <input type="radio" name="order" value="asc" id="asc" checked>
        <label for="asc">ASC</label>
        <input type="radio" name="order" id="desc" value="desc">
        <label for="desc">DESC</label>
        <button class="button" type="submit">Search</button>
    </form>
   
    <div class="container">
        <table class="table table-hover table-warning">
                <thead>
                  <tr>
                    <th scope="col">Code</th>
                    <th scope="col">Name</th>
                    <th scope="col">Type</th>
                    <th scope="col">Vendor</th>
                    <th scope="col">Quantity</th>
                    <th scope="col">Price</th>
                  </tr>
                </thead>
                <tbody>
                    <?php while($row = mysqli_fetch_array($res)){
                    ?>
                  <tr>
                    <th scope="row"><?php echo $row['productCode'];?></th>
                    <td><?php echo $row['productName'];?></td>
                    <td><?php echo $row['productLine'];?></td>
                    <td><?php echo $row['productVendor'];?></td>
                    <td><?php echo $row['quantityInStock'];?></td>
                    <td><?php echo $row['buyPrice']."$";?></td>
                  </tr>
                <?php
                    }
                ?>
                </tbody>
              </table>
</div>

    <?php    
    echo file_get_contents("../html/footer.html");    
    ?>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<?php
    $conn -> close();
?>