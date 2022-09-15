<?php 
include "includes/inc.dbc.php";
session_start();
?>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Home</title>
        <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Amatic+SC&family=Shadows+Into+Light&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="css/main.css">
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
        
         <p>What are you hungry for today</p>
        <div class="container">
            <img src="images\myplate-brand--labelled.png" alt="MyPlate Nutrition">
            <button class="btn">Fruit</button>
            <!--button class="btn">Veggies</button>
            <button class="btn">Grains</button>
            <button class="btn">Protein</button>
            <button class="btn">Dairy</button>
            <button class="btn">Snacks</button-->
        </div>
    </body>
</html>
