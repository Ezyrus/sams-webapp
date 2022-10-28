<?php 
    require_once "../databaseConnection.php";
    require_once "addStudentsOctober2022.php";

    $selectLrn = $_GET['ID'];

    $studentSelectSql = "SELECT * FROM students WHERE lrn = '$selectLrn'";

    $initiateSelectSql = mysqli_query(databaseConnection(), $studentSelectSql);

    $studentRow = mysqli_fetch_assoc($initiateSelectSql);

    $studentLrn = $studentRow['lrn']; 
    $studentName = $studentRow['name'];
    $studentSection = $studentRow['section'];

        $addStudentSql = "INSERT INTO `$monthYear`(`lrn`, `student_name`, `section`) VALUES ('$studentLrn','$studentName','$studentSection')";

        mysqli_query(databaseConnection(), $addStudentSql);

        // header("Location: addStudentsOctober2022.php");

?>