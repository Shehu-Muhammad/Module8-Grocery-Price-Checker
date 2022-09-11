<?php
    $databaseConnection = mysqli_connect("localhost", "root", "", "module_eight_grocery_price_check");
    $errors = [];
    if ( mysqli_connect_errno() ) {
        exit( "Database connection failed" );
    } 
?>