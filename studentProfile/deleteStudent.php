<?php
session_start();
require_once "../databaseConnection.php";

$deleteLrn = htmlentities($_GET['ID']);
$_SESSION['messageUpdate'] = "$deleteLrn has been deleted";

$selectArchiveSql = "SELECT * FROM `students_archive` WHERE `lrn` = '$deleteLrn' ";
$selectArchiveResult = mysqli_query(databaseConnection(), $selectArchiveSql);

$archiveNumRow = mysqli_num_rows($selectArchiveResult);

if ($archiveNumRow > 0) {
    echo '<script>alert("LRN DUPLICATION DETECTED \nPlease check both LRN from student profile and archive page first before deleting a student");
    window.history.back();
    </script>';
} else {
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
}
