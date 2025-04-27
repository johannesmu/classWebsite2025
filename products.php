<?php
include 'src/database.php';

// get the products data from database
$query = "
SELECT 
iD,
Name,
Category,
Price,
Description,
Image
FROM Products
";
$statement = $connection -> prepare($query);
$statement -> execute();
$result = $statement -> get_result();
$Products = array();
while( $row = $result -> fetch_assoc() ) {
array_push( $Products, $row);
}
?>
<!DOCTYPE html>
<html>
<?php
// include head section
include "components/head.php";
?>

<body>
    <?php include "components/header.php"; ?>
    <main>
        <section class="Products">
            <?php
            //outout products
            foreach( $Products as $p) {
                $Image = $p["Image"];
                $Name = $p["Name"];
                $Description = $p["Description"];
                $Price = $p["Price"];
                echo "
                <idv class='card'>
                <img class= 'card-Image' src='images/$Image'>
                <div class = 'card-content'>
                <h4>$Name</h4>
                <h5> $Price</h5>
                <p>$Description</p>


                </div>
                </div>
                ";
            }
            ?>
        </section>
    </main>
    <?php include "components/footer.php"; ?>
</body>

</html>