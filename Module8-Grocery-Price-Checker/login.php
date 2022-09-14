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
        <title>Log In</title>
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
            </ul>
        </nav>
<?php 
    if( $_SERVER['REQUEST_METHOD'] === 'POST' && isset( $_POST['loginClicked']) ) {
        $username = mysqli_real_escape_string( $databaseConnection, $_POST['username'] );
        $password = mysqli_real_escape_string( $databaseConnection, $_POST['password'] );
        
        $sql = "SELECT * FROM users ";
        $sql .= "WHERE username='". $username . "'";
        
        $user = mysqli_query( $databaseConnection, $sql );
        $user = mysqli_fetch_assoc( $user );
        
        if( $user ) {
            // Check to make sure the password is correct
            if( password_verify( $password, $user['hashed_password'] ) ) {
                // Log the user in
                session_regenerate_id(); // Security feature against session
                
                $_SESSION['userId'] = $user['id'];
                $_SESSION['username'] = $user['username'];
                header("Location: index.php");
                exit();
            } else {
                // If User's password is wrong
                $errors[] = "The password entered is incorrect";
            } 
        } else {
            // If the Username is not in the database
            $errors[] = "The username does not exist";
        }
    }
?>      <span class="error">
<?php
    foreach( $errors as $currentError ) {
        echo ( $currentError );
    }
?>    
        </span>
        <h3>Login</h3>
        <form action="login.php" method="post">
            <input type="text" name="username" placeholder="Username">
            <input type="password" name="password" placeholder="Password">
            <input type="submit" name="loginClicked" placeholder="Login">
        </form>
    </body>
</html>