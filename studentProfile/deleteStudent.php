<?php
    session_start(); 
    require_once "../databaseConnection.php";

    $deleteLrn = htmlentities( $_GET['ID']);
    $_SESSION['messageUpdate'] = "$deleteLrn has been deleted" ;

    $selectDeletedSql = "SELECT * FROM `students` WHERE `lrn` = '$deleteLrn'";
    $initiateSelectDeleted = mysqli_query(databaseConnection(), $selectDeletedSql);
    $selectDeletedRow = mysqli_fetch_assoc($initiateSelectDeleted);

    do {

        $studentLrn = $selectDeletedRow['lrn'];
        $studentName = $selectDeletedRow['name'];
        $studentSection = $selectDeletedRow['section'];
        $studentAge = $selectDeletedRow['age'];
        $studentAddress = $selectDeletedRow['address'];
        $studentEmail = $selectDeletedRow['email'];
        $studentNumber = $selectDeletedRow['contact_number'];

    } while ($selectDeletedRow = mysqli_fetch_assoc($initiateSelectDeleted));

    $toArchiveSql = "INSERT INTO `students_archive` (`lrn`, `name`, `section`, `age`, `address`, `email`, `contact_number`) VALUES ('$studentLrn', '$studentName', '$studentSection', '$studentAge', '$studentAddress', '$studentEmail', '$studentNumber')";
   mysqli_query(databaseConnection(), $toArchiveSql);

    $deleteStudentSql = "DELETE FROM students WHERE lrn =  '$deleteLrn'";
    mysqli_query(databaseConnection(), $deleteStudentSql);

    echo header("Location: studentProfile.php");
?>

