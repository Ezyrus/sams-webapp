<?php 
    session_start(); 
    require_once "databaseConnection.php";
  
    $selectLrn = $_GET['ID'];
    $monthYear = $_SESSION['monthYear'];

    $studentSelectSql = "SELECT * FROM students WHERE lrn = '$selectLrn'";

    $initiateStudentSelectSql = mysqli_query(databaseConnection(), $studentSelectSql);

    $studentRow = mysqli_fetch_assoc($initiateStudentSelectSql);

    $studentLrn = $studentRow['lrn']; 
    $studentName = $studentRow['name'];
    $studentSection = $studentRow['section'];

    //Month Table 
    $monthSelectSql = "SELECT * FROM $monthYear";

    $initiateMonthSelectSql = mysqli_query(databaseConnection(), $monthSelectSql);

    $monthRow = mysqli_fetch_assoc($initiateMonthSelectSql);

    if ($selectLrn == $monthRow['lrn']) {
        echo '<script>alert("Student LRN :  '. $selectLrn. ' already exist in October 2022 Record.")
        document.location = "addStudents.php"</script>';
    } else {
        $addStudentSql = "INSERT INTO `$monthYear`(`lrn`, `student_name`, `section`) VALUES ('$studentLrn','$studentName','$studentSection')";
        mysqli_query(databaseConnection(), $addStudentSql);   
        
        echo '<script>alert("Student LRN :  '. $selectLrn. ' has been successfully added")
        document.location = "addStudents.php"</script>';
    }
        

?>