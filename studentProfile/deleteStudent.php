<?php
    session_start(); 
    require_once "../databaseConnection.php";

    $deleteLrn = htmlentities( $_GET['ID']);
    $_SESSION['messageUpdate'] = "$deleteLrn has been deleted" ;
    $deleteStudentSql = "DELETE FROM students WHERE lrn =  '$deleteLrn'";

    mysqli_query(databaseConnection(), $deleteStudentSql);
    
    echo header("Location: studentProfile.php");
?>