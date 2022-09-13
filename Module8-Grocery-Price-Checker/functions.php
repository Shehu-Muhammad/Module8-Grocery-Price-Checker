<?php
    function getProductDetailsfromDatabase($databaseConnection, $categoryId) {
        $categoryId = mysqli_real_escape_string($databaseConnection, $categoryId);
        $sql = "Select * from product_details where categoriesId = ". $categoryId ." order by productName ASC";
        $productDetails = mysqli_query($databaseConnection, $sql);
        $imageUrl = "images/";
        while( $currentDetails = mysqli_fetch_assoc($productDetails) ) {   
?>
            <div class="flip-card">
                <div class="flip-card-inner">
                    <div class="flip-card-front">
                        <img src="<?php echo($imageUrl."".$currentDetails['imageSource'])?>" alt="<?php echo($currentDetails['productName'])?>">
                    </div>
                    <div class="flip-card-back">
                        <h3><?php echo($currentDetails['productName'])?></h3>
                        <p><?php echo($currentDetails['description'])?></p>
                        <p><?php echo(getStoreNameById($databaseConnection, $currentDetails['storeId']))?></p>
                        <p>$ <?php echo($currentDetails['price'])?></p>
                        <button>+</button>
                    </div>
                </div>
            </div>
<?php
        }
    }

    function getStoreNameById($databaseConnection, $id) {
        $id = mysqli_real_escape_string($databaseConnection, $id);
        $sql = "Select * from store where id='". $id ."'";

        $storeName = mysqli_query($databaseConnection, $sql);
        $storeName = mysqli_fetch_row($storeName);
        $storeName = $storeName[1];

        return ucfirst($storeName);
    }


?>