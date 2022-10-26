<?php
    session_start(); 
    require_once "databaseConnection.php";

    $deleteLrn = $_GET['ID'];
    $deleteStudent = "DELETE FROM students WHERE lrn =  '$deleteLrn'";

    mysqli_query(databaseConnection(), $deleteStudent);
    
    echo header("Location: studentProfile.php");
?>