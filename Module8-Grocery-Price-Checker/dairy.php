<?php 
    include "includes/inc.dbc.php";
    include "functions.php";
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dairy</title>
    <link rel="stylesheet" href="css/productStyles.css">
</head>
    <body>
<?php
    getProductDetailsfromDatabase($databaseConnection, 4); 
?>
    </body>
</html>