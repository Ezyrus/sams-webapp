<?php
session_start();
require_once "databaseConnection.php";

$studentLrn = $_GET['ID'];
$monthYear = $_SESSION['monthYear'];

if (isset($_POST['saveAttendance'])) {
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

    // if ($classDay01 == "" || $classDay02 == '"' || 
    // $classDay03 == "" || $classDay04 == "" || 
    // $classDay05 == "" || $classDay06 == "" || 
    // $classDay07 == "" || $classDay08 == "" || 
    // $classDay09 == "" || $classDay10 == "" || 
    // $classDay11 == "" || $classDay12 == "" || 
    // $classDay13 == "" || $classDay14 == "" || 
    // $classDay15 == "" || $classDay16 == "" || 
    // $classDay17 == "" || $classDay18 == "" || 
    // $classDay19 == "" || $classDay20 == "" || 
    // $classDay21 == "" || $classDay22 == "" || 
    // $classDay23 == "" || $classDay24 == "" || 
    // $classDay25 == "" || $classDay26 == "" || 
    // $classDay27 == "" || $classDay28 == "" || 
    // $classDay29 == "" || $classDay30 == "" || 
    // $classDay31 == "") {
    //     echo "empty";
    // } else {
    //     echo "not empty";
    // }

    $classDays = array($classDay01, $classDay02, $classDay03, $classDay04, $classDay05, $classDay06, $classDay07, $classDay08, $classDay09, $classDay10, $classDay11, $classDay12, $classDay13, $classDay14, $classDay15, $classDay16, $classDay17, $classDay18, $classDay19, $classDay20, $classDay21, $classDay22, $classDay23, $classDay24, $classDay25, $classDay26, $classDay27, $classDay28, $classDay29, $classDay30, $classDay31);

    $classDaysCount = count($classDays);
    echo $classDaysCount;

    //TODO: Make $key starts at 1 and  fix Month-Year Logic for fuck sake...

    foreach ($classDays as $key => $value) {

                echo " || $key => $value";

                if ($value == "") {
                    echo "EMPTY";
                } else {
                    $updateAttendanceSQL = "UPDATE `$monthYear` SET `$key`='$value' WHERE `lrn` = '$studentLrn' ";
    
                    mysqli_query(databaseConnection(), $updateAttendanceSQL);
            }

        // if ($key < 1) {
            
        //     } else {
                
        // }
    }

    // $updateAttendanceSQL = "UPDATE `$monthYear` SET `$key`='$classDay01',`2`='$classDay02',`3`='$classDay03',`4`='$classDay04',`5`='$classDay05',`6`='$classDay06',`7`='$classDay07',`8`='$classDay08',`9`='$classDay09',`10`='$classDay10',`11`='$classDay11',`12`='$classDay12',`13`='$classDay13',`14`='$classDay14',`15`='$classDay15',`16`='$classDay16',`17`='$classDay17',`18`='$classDay18',`19`='$classDay19',`20`='$classDay20',`21`='$classDay21',`22`='$classDay22',`23`='$classDay23',`24`='$classDay24',`25`='$classDay25',`26`='$classDay26',`27`='$classDay27',`28`='$classDay28',`29`='$classDay29',`30`='$classDay30',`31`='$classDay31' WHERE `lrn` = '$studentLrn' ";

    // mysqli_query(databaseConnection(), $updateAttendanceSQL);


    // echo '<script>window.history.back();</script>';
    // alert("Student : '. $studentLrn . ' has been sucessfully saved ")
}
