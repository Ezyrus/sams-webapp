<?php
session_start();
require_once "databaseConnection.php";

$selectLrn = $_GET['ID'];
$monthYear = $_SESSION['monthYear'];

//Student Table
$studentSelectSql = "SELECT * FROM students WHERE lrn = '$selectLrn'";

$initiateStudentSelectSql = mysqli_query(databaseConnection(), $studentSelectSql);

$studentRow = mysqli_fetch_assoc($initiateStudentSelectSql);

$studentLrn = $studentRow['lrn'];
$studentName = $studentRow['name'];
$studentSection = $studentRow['section'];

$monthSelectSql = "SELECT * FROM $monthYear WHERE lrn = '$selectLrn'";

$initiateMonthSelectSql = mysqli_query(databaseConnection(), $monthSelectSql);

$monthRow = mysqli_fetch_assoc($initiateMonthSelectSql);

$monthTableNumRows = mysqli_num_rows($initiateMonthSelectSql);

if ($monthTableNumRows) {
    echo '<script>alert("Student LRN :  ' . $selectLrn . ' already exist in October 2022 Record.")
        document.location = "addStudents.php"</script>';
} else {
    $addStudentSql = "INSERT INTO `$monthYear`(`lrn`, `student_name`, `section`) VALUES ('$studentLrn','$studentName','$studentSection')";
    mysqli_query(databaseConnection(), $addStudentSql);

    echo '<script>alert("Student LRN :  ' . $selectLrn . ' has been successfully added")
        document.location = "addStudents.php"</script>';
}
