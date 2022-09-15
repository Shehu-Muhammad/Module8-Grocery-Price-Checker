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
    <title>Snacks</title>
    <link rel="stylesheet" href="css/productStyles.css">
</head>
    <body>
    <nav>
            <ul>
                <li id="logo">
                    <a href="index.php">
                        <img class="logo" src="images\logo.png" alt="Munni Logo">
                    </a>
                </li>
                <li id="search">
                    search bar placeholder
                </li>
                <li>
                    <a href="#">
                        Shopping List
                    </a>
                </li>
                <li>
                    <a href="signup.php">
                        Sign Up
                    </a>
                </li>
<?php
    if( !isset( $_SESSION['userId'] ) ) {
?>
                <li>
                    <a href="login.php">
                        Log In
                    </a>
                </li>
<?php
    } else {
?>
                <li>
                    <a href="logout.php">
                        Logout
                    </a>
                </li>
<?php
    }
?>
            </ul>
        </nav>
<?php 
    if( isset( $_SESSION['userId'] ) ) {
?>
        <h1>Welcome to Munni <?php echo( $_SESSION['username'] )?></h1>
<?php
    $userId = $_SESSION['userId'];
    } else {
?>
        <h1>Welcome to Munni</h1>
<?php
    }
?>
<?php
    
?> 
<?php
    getProductDetailsfromDatabase($databaseConnection, 6); 
?>
    <script src="scripts/index.js"></script>
    </body>
</html>