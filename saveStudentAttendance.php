<?php
    session_start();
    // error_reporting(0);  //hide errors
    // ini_set('display_errors', 0); //hide errors
    require_once "databaseConnection.php";

    $studentLrn = $_GET['ID'];
    $monthYear = $_SESSION['monthYear'];

    //Whole month table
    $selectMonthYearSql = "SELECT * FROM october2022";
    $initiateSelectSql = mysqli_query(databaseConnection(), $selectMonthYearSql);
    $monthYearRow = mysqli_fetch_assoc($initiateSelectSql);
    $selectTableNumRows= mysqli_num_rows($initiateSelectSql);

    function schoolDays() {
        $classDay01 = $_POST['classDay01'];
        $classDay02 = $_POST['classDay02'];
        $classDay03 = $_POST['classDay03'];
        $classDay04 = $_POST['classDay04'];
        $classDay05 = $_POST['classDay05'];
        $classDay06 = $_POST['classDay06'];
        $classDay07 = $_POST['classDay07'];
        $classDay08 = $_POST['classDay08'];
        $classDay09 = $_POST['classDay09'];
        $classDay10 = $_POST['classDay10'];
        $classDay11 = $_POST['classDay11'];
        $classDay12 = $_POST['classDay12'];
        $classDay13 = $_POST['classDay13'];
        $classDay14 = $_POST['classDay14'];
        $classDay15 = $_POST['classDay15'];
        $classDay16 = $_POST['classDay16'];
        $classDay17 = $_POST['classDay17'];
        $classDay18 = $_POST['classDay18'];
        $classDay19 = $_POST['classDay19'];
        $classDay20 = $_POST['classDay20'];
        $classDay21 = $_POST['classDay21'];
        $classDay22 = $_POST['classDay22'];
        $classDay23 = $_POST['classDay23'];
        $classDay24 = $_POST['classDay24'];
        $classDay25 = $_POST['classDay25'];
        $classDay26 = $_POST['classDay26'];
        $classDay27 = $_POST['classDay27'];
        $classDay28 = $_POST['classDay28'];
        $classDay29 = $_POST['classDay29'];
        $classDay30 = $_POST['classDay30'];
        $classDay31 = $_POST['classDay31'];
    
        $classDays = array(0, $classDay01, $classDay02, $classDay03, $classDay04, $classDay05, $classDay06, $classDay07, $classDay08, $classDay09, $classDay10, $classDay11, $classDay12, $classDay13, $classDay14, $classDay15, $classDay16, $classDay17, $classDay18, $classDay19, $classDay20, $classDay21, $classDay22, $classDay23, $classDay24, $classDay25, $classDay26, $classDay27, $classDay28, $classDay29, $classDay30, $classDay31); // ignore index 0 with a value of 0

        return $classDays;
    }
   
    if (isset($_POST['saveAttendance'])) {

        foreach (schoolDays() as $key => $value) {
            if ($key >= 1) {
                if ($value == "") {
                    // do nothing
                } else {
                    $updateAttendanceSQL = "UPDATE `$monthYear` SET `$key`='$value' WHERE `lrn` = '$studentLrn' ";
                    mysqli_query(databaseConnection(), $updateAttendanceSQL);
                }
            }
        }
    }

    $schoolDays = count(schoolDays()) - 1;
    $totalPresent = 0;
    $totalAbsent = 0;
    $attendanceRate = 100;
  

    $studentLrn = array(0); //stores all recorded lrn's from database
    $studentAttendanceTotalPresent = 0;
    do {
        array_push($studentLrn, $monthYearRow['lrn']);
    } while ($monthYearRow = mysqli_fetch_assoc($initiateSelectSql));
  
    foreach ($studentLrn as $key => $value) {
        
        if ($key >= 1) {

            $attCount = 0;

            while ($attCount < $schoolDays) { // 0 < 31

                $attCount++;
             
                $selectStudentAttendanceSql = "SELECT * FROM `$monthYear` WHERE `lrn` = '$value' AND `$attCount` = 'present'";
                $initiateSelectAttendanceSql = mysqli_query(databaseConnection(), $selectStudentAttendanceSql);
                $studentAttendanceRow = mysqli_fetch_assoc($initiateSelectAttendanceSql);
                $studentAttendanceTableNumRows = mysqli_num_rows($initiateSelectAttendanceSql);

                $studentAttendanceTotalPresent += $studentAttendanceTableNumRows;

                // echo "$value = $attCount | $studentAttendanceTotalPresent "; print_r($studentAttendanceRow); echo "<br/>"; // debug 

                $updateStudentTotalPresentSql =  "UPDATE `$monthYear` SET `present_total`='$studentAttendanceTotalPresent' WHERE `lrn` = '$value' ";
                mysqli_query(databaseConnection(), $updateStudentTotalPresentSql);
             }

            if ($key++) {
                $studentAttendanceTotalPresent = 0; //resets 
            }
                
         }

    }
    
    // echo '<script>window.history.back();</script>';
    // alert("Student : '. $studentLrn . ' has been sucessfully saved ")
