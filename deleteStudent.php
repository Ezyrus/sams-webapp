<?php
    session_start(); 
    require_once "databaseConnection.php";

    $deleteLrn = $_GET['ID'];
    $deleteStudent = "DELETE FROM students WHERE lrn =  '$deleteLrn'";

    databaseConnection()->query($deleteStudent) or die (databaseConnection()->error);

    echo header("Location: studentProfile.php");
?>