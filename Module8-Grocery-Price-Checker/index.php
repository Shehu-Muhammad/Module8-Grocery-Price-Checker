<!--?php 
include "includes/inc.dbc.php";
session_start();
?-->
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Home</title>
        <link rel="stylesheet" href="css/main.css">
    </head>
    <body>
        <nav>
            <ul>
                <li id="logo">
                    <a href="index.php">
                        <img src="images\logo.png" alt="Munni Logo">
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
        
         <p>What are you hungry for today
</p>
  <br>
  <section class="selection">
    <div class="choice">
      <a href="vegtables.php" class="veggies">
        <img src="images/vegetables.jpg">
        <p>Vegetables</p>
      </a>
    </div>
    <div class="choice">
      <a href="fruits.php" class="fruits">
        <img src="images/fruits.jpg">
        <p>Fruits</p>
      </a>
    </div>
    <div class="choice">
      <a href="protein.php" class="meats"> 
        <img src="images/meat.jpg">
        <p>Meat and Fish</>
      </a>
    </div>
    <div class="choice">
      <a href="grains.php" class="grains">
        <img src="images/grains.jpg">
        <p>Grains</p>
      </a>
      
    </div>
    <div class="choice">
      <a href="dairy.php" class="dairy">
        <img src="images/dairy.jpg">
        <p>Dairy</p>
      </a>
    </div>
    <div class="choice">
      <a href="snacks.php" class="junk">
        <img src="images/junk.jpg">
        <p>Snacks</p>
      </a>
    </div>
  </section>
      
    </body>
</html>
