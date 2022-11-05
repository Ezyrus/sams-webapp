<?php
    session_start();
    error_reporting(0);  //hide errors
    require_once "../databaseConnection.php";

    $studentLrn = $_GET['ID'];
    $monthYear = $_SESSION['monthYear'];
     $_SESSION['toSessionStudentLrn'] = $studentLrn;

    //Whole month table
    $selectMonthYearSql = "SELECT * FROM october2022";
    $initiateSelectSql = mysqli_query(databaseConnection(), $selectMonthYearSql);
    $monthYearRow = mysqli_fetch_assoc($initiateSelectSql);
    $selectTableNumRows = mysqli_num_rows($initiateSelectSql);

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

    $studentTotalPresent = 0;
    $studentTotalAbsent = 0;
    $studentSchoolDays = 0;
    $studentAttendanceRate = 0;
    $attCount = 0;
    while ($attCount < $schoolDays) { // 0 < 31
        $attCount++;

        // Total Present Algorithm
        $selectStudentPresentSql = "SELECT * FROM `$monthYear` WHERE `lrn` = '$studentLrn' AND `$attCount` = 'present'";
        $initiateSelectPresentSql = mysqli_query(databaseConnection(), $selectStudentPresentSql);
        $studentPresentRow = mysqli_fetch_assoc($initiateSelectPresentSql);
        $studentPresentTableNumRows = mysqli_num_rows($initiateSelectPresentSql);
        $studentTotalPresent += $studentPresentTableNumRows;
        // echo "Present = $attCount | $studentTotalPresent "; print_r($studentPresentRow); echo "<br/>"; // debug 
        $updateTotalPresentSql =  "UPDATE `$monthYear` SET `present_total`='$studentTotalPresent' WHERE `lrn` = '$studentLrn' ";
        mysqli_query(databaseConnection(), $updateTotalPresentSql);

        //Total Absent Algorithm
        $selectStudentAbsentSql =  "SELECT * FROM `$monthYear` WHERE `lrn` = '$studentLrn' AND `$attCount` = 'absent'";
        $initiateSelectAbsentSql = mysqli_query(databaseConnection(), $selectStudentAbsentSql);
        $studentAbsentRow = mysqli_fetch_assoc($initiateSelectAbsentSql);
        $studentAbsentTableNumRows = mysqli_num_rows($initiateSelectAbsentSql);
        $studentTotalAbsent += $studentAbsentTableNumRows;
        //  //echo "Absent = $attCount | $studentTotalAbsent "; print_r($studentAbsentRow); echo "<br/>"; // debug
        $updateTotalAbsentSql =  "UPDATE `$monthYear` SET `absent_total`='$studentTotalAbsent' WHERE `lrn` = '$studentLrn' ";
        mysqli_query(databaseConnection(), $updateTotalAbsentSql);
    }

    //Total School Days
    $studentSchoolDays = $studentTotalPresent + $studentTotalAbsent;
    $updateSchoolDaysSql =  "UPDATE `$monthYear` SET `school_days`='$studentSchoolDays' WHERE `lrn` = '$studentLrn' ";
    mysqli_query(databaseConnection(), $updateSchoolDaysSql);

    //Student Attendance Rate
    $studentAttendanceRate = $studentTotalPresent / $studentSchoolDays * 100;
    $updateAttendanceRateSql = "UPDATE `$monthYear` SET `attendance_rate`='$studentAttendanceRate' WHERE `lrn` = '$studentLrn' ";
    mysqli_query(databaseConnection(), $updateAttendanceRateSql);
    //To reset everything after initiation of Sql queries
    $studentTotalPresent = 0;
    $studentTotalAbsent = 0;
    $studentSchoolDays = 0;
    $studentAttendanceRate = 0;

    echo '<script>window.history.back();</script>';

    
    // alert("Student : '. $studentLrn . ' has been sucessfully saved ")

?>