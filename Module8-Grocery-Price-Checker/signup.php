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
        <title>Sign Up</title>
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
                    <a href="login.php">
                        Log In
                    </a>
                </li>
            </ul>
        </nav>
<?php
    if ( $_SERVER['REQUEST_METHOD'] === 'POST' && isset( $_POST['signUpClicked'] ) ) {
        $firstName = mysqli_real_escape_string( $databaseConnection, $_POST['firstName'] );
        $lastName = mysqli_real_escape_string( $databaseConnection, $_POST['lastName'] );
        $username = mysqli_real_escape_string( $databaseConnection, $_POST['username'] );
        $email = mysqli_real_escape_string( $databaseConnection, $_POST['email'] );
        $password = mysqli_real_escape_string( $databaseConnection, $_POST['password'] );
        $repeatPassword = mysqli_real_escape_string( $databaseConnection, $_POST['repeatPassword'] );
        
        // Check if password entered is correct
        if($password !== $repeatPassword) {
            echo("Passwords do not match");
        } else {
            // hash the password to store into the database
            $hashedPassword = password_hash( $password, PASSWORD_DEFAULT );
            
            $sql = "INSERT INTO users ";
            $sql .= "( firstName, lastName, username, email, hashed_password ) ";
            $sql .= "VALUES ( ";
            $sql .= "'" . $firstName . "', ";
            $sql .= "'" . $lastName . "', ";
            $sql .= "'" . $username . "', ";
            $sql .= "'" . $email . "', ";
            $sql .= "'" . $hashedPassword . "'";
            $sql .= " )";
            
            // echo ( $sql );
            // exit();
            
            $userInsertedSuccessfully = mysqli_query ( $databaseConnection, $sql );
            
            if( $userInsertedSuccessfully ) {
                header( "Location: login.php" );
                exit();
            } else {
                echo( mysqli_errno( $databaseConnection ) );
                if ( $databaseConnection ) {
                    mysqli_close( $databaseConnection );
                }
            }
            exit();
        }
    }



?>
        <h3>Sign Up</h3>
        <form action="signup.php" method="post">
            <input type="text" name="firstName" placeholder="First Name">
            <input type="text" name="lastName" placeholder="Last Name">
            <input type="email" name="email" placeholder="E-mail">
            <input type="text" name="username" placeholder="username">
            <input type="password" name="password" placeholder="password">
            <input type="password" name="repeatPassword" placeholder="Re-enter password">
            <input type="submit" name="signUpClicked" placeholder="Join">
        </form>
    </body>
</html>