<?php 
    session_start(); 
    require_once "../databaseConnection.php";

    $addLrn = $_GET['ID'];

    //Student Table
    $studentRowSql = "SELECT * FROM students WHERE lrn = '$addLrn'";
    $studentRowResult = databaseConnection()->query($studentRowSql) or die (databaseConnection()->error);
    $studentRow = $studentRowResult->fetch_assoc();

    $studentLrn = $studentRow['lrn']; 
    $studentName = $studentRow['name'];
    $studentSection = $studentRow['section'];

    //Month Table 
    $monthRowSql = "SELECT * FROM  october2022";

    $monthRowResult = databaseConnection()->query($monthRowSql) or die (databaseConnection()->error);
    $monthtRow = $monthRowResult->fetch_assoc();

    print_r ($monthRow['lrn']);

    // if ($addLrn == $studentLrn) {
    //     echo "$monthStudentLrn | $studentLrn = Same";
    //     // $addStudentSql = "INSERT INTO `october2022`(`month_id`,  `lrn`, `student_name`, `section`, `1`, `2`, `3`, `4`, `5`, `6`, `7`, `8`, `9`, `10`, `11`, `12`, `13`, `14`, `15`, `16`, `17`, `18`, `19`, `20`, `21`, `22`, `23`, `24`, `25`, `26`, `27`, `28`, `29`, `30`, `31`, `school_days`, `present_total`, `absent_total`) VALUES ('','$studentLrn','$studentName','$studentSection','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','')";

    //     // databaseConnection()->query($addStudentSql) or die (databaseConnection()->error);

    //     // echo header("Location: addStudents.php");
    // } else {
    //     echo "$monthStudentLrn | $studentLrn = Not Same";
    // }



?>