<?php
    session_start(); 
    require_once "../databaseConnection.php";

    $deleteLrn = $_GET['ID'];
    $deleteStudentSql = "DELETE FROM students WHERE lrn =  '$deleteLrn'";

    mysqli_query(databaseConnection(), $deleteStudentSql);
    
    echo header("Location: studentProfile.php");
?>