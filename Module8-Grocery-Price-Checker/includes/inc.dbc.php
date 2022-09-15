<?php
    $databaseConnection = mysqli_connect("127.0.0.1", "root", "root", "module_eight_grocery_price_check");
    $errors = [];
    if ( mysqli_connect_errno() ) {
        exit( "Database connection failed" );
    } 
?>