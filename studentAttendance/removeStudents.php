<?php
    session_start(); 
    require_once "../databaseConnection.php";

    $deleteLrn = $_GET['ID'];
    $monthYear = $_SESSION['monthYear'];
    $_SESSION['messageUpdate'] = "$deleteLrn has been removed" ;

    $deleteStudentSql = "DELETE FROM $monthYear WHERE lrn = '$deleteLrn' ";

    mysqli_query(databaseConnection(), $deleteStudentSql);

    echo '<script>window.history.back();</script>';

?>
