<?php
    session_start(); 
    require_once "../databaseConnection.php";

    $undoLrn = htmlentities($_GET['ID']);

    $selectDeletedSql = "SELECT * FROM `students_archive` WHERE `lrn` = '$undoLrn'";
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

    $toProfileSql = "INSERT INTO `students` (`lrn`, `name`, `section`, `age`, `address`, `email`, `contact_number`) VALUES ('$studentLrn', '$studentName', '$studentSection', '$studentAge', '$studentAddress', '$studentEmail', '$studentNumber')";
   mysqli_query(databaseConnection(), $toProfileSql);

    $deleteStudentSql = "DELETE FROM students_archive WHERE lrn =  '$undoLrn'";
    mysqli_query(databaseConnection(), $deleteStudentSql);

    echo header("Location: studentArchives.php");
?>

