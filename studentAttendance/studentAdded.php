<?php
session_start();
require_once "../databaseConnection.php";

$selectLrn = $_GET['ID'];
$monthYear = $_SESSION['monthYear'];
$_SESSION['messageUpdate'] = "$selectLrn has been added";

//Student Table
$studentSelectSql = "SELECT * FROM students WHERE lrn = '$selectLrn'";
$initiateStudentSelectSql = mysqli_query(databaseConnection(), $studentSelectSql);
$studentRow = mysqli_fetch_assoc($initiateStudentSelectSql);

$studentLrn = $studentRow['lrn'];
$studentName = $studentRow['name'];
$studentSection = $studentRow['section'];

$monthSelectSql = "SELECT * FROM $monthYear WHERE lrn = '$studentLrn'";
$initiateMonthSelectSql = mysqli_query(databaseConnection(), $monthSelectSql);
$monthRow = mysqli_fetch_assoc($initiateMonthSelectSql);
$monthTableNumRows = mysqli_num_rows($initiateMonthSelectSql);

if ($monthTableNumRows) {
    echo '<script>alert("Student LRN :  ' . $selectLrn . ' already exist in  ' . $monthYear . '  Record.");
    window.history.back();</script>';
} else {
    $insertStudentSql = "INSERT INTO `$monthYear`(`lrn`, `student_name`, `section`) VALUES ('$studentLrn','$studentName','$studentSection')";
    mysqli_query(databaseConnection(), $insertStudentSql);

    echo '<script>
    window.history.back();
    </script>';
}
