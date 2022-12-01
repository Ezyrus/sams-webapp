<?php
    session_start(); 
    require_once "../databaseConnection.php";

    $removeLrn = htmlentities($_GET['ID']);

    $deleteStudentSql = "DELETE FROM students_archive WHERE lrn =  '$removeLrn'";
    mysqli_query(databaseConnection(), $deleteStudentSql);

    echo header("Location: studentArchives.php");
?>

