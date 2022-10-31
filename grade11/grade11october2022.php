<?php
   session_start();
   require_once "../databaseConnection.php";

   $selectMonthYearSql = "SELECT * FROM october2022";
   $initiateSelectSql = mysqli_query(databaseConnection(), $selectMonthYearSql);
   $monthYearRow = mysqli_fetch_assoc($initiateSelectSql);

   
?>

<!DOCTYPE html>
<html lang="en">

<head>

   <link href="https://fonts.googleapis.com/css2?family=Poppins&family=Roboto+Mono&family=Tomorrow&display=swap" rel="stylesheet">

   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">

   <link rel="stylesheet" href="../styles/grade11october2022.css?v=<?php echo time(); ?>">
   <link rel="stylesheet" href="../styles/header-footer.css?v=<?php echo time(); ?>">
   <script src="../js/addStudentAttendance.js?v=<?php echo time(); ?>"></script>

   <title>Student Attendance Monitoring System</title>

</head>

<body>

   <header>
      <div class="calLogo">
         <div>
            <img src="../assets/calHigh.png" alt="Caloocan Highschool Logo">
         </div>
      </div>

      <div class="title">
         <h2>Student Attendance Monitoring System</h2>
         <h5>4P's Student Members Monitoring System</h5>
      </div>

      <div class="depEdLogo">
         <div>
            <img src="../assets/depEd.png" alt="DepEd Logo">
         </div>
      </div>
   </header>

   <section class="nav">

      <div class="legend">

         <div>
            <div class="present">
               <h2>present:</h2>
               <h3 class="color present">#P#</h3>
            </div>

            <div class="absent">
               <h2>absent:</h3>
               <h3 class="color absent">#A#</h3>
            </div>

            <div class="schoolDays">
               <h2>No Class:</h2>
               <h3 class="color schoolDays">NC#</h3>
            </div>
         </div>

         <h1><span class = "green">︾ L</span>e<span class = "red">ge</span>n<span class = "yellow">ds</span></h1>

      </div>

      <div class="title">
         <h6 class="adminLogged">Admin : <span><?php echo $_SESSION['username']; ?></span></h6>

         <div>
            <h3>October 2022</h3>
            <h6>4p's Grade 11 Student Records</h6>
         </div>

      </div>

      <div class="navigate">

         <div>
            <h2 class="addStudents"><a href="../addStudents.php">
                  <?php $_SESSION['monthYear'] = "october2022"; ?>Add students</a>
            </h2>
            <h2 class="studentProfile">
               <a href="../studentProfile.php">Student Profile</a>
            </h2>
         </div>

         <div>
            <h2 class="gradeLevel">
               <a href="../gradeLevel.php">Grade Level</a>
            </h2>
            <h2 class="logout">
               <a href="../logout.php">logout ︾</a>
            </h2>
         </div>

      </div>

   </section>

   <section class="main">
      <table>
         <tr class="tableHeader">
            <th class="otherInfo">LRN</th>
            <th class="otherInfo">Student Name</th>
            <th class="otherInfo">Section</th>
            <th class="monthDays">1</th>
            <th class="monthDays">2</th>
            <th class="monthDays">3</th>
            <th class="monthDays">4</th>
            <th class="monthDays">5</th>
            <th class="monthDays">6</th>
            <th class="monthDays">7</th>
            <th class="monthDays">8</th>
            <th class="monthDays">9</th>
            <th class="monthDays">10</th>
            <th class="monthDays">11</th>
            <th class="monthDays">12</th>
            <th class="monthDays">13</th>
            <th class="monthDays">14</th>
            <th class="monthDays">15</th>
            <th class="monthDays">16</th>
            <th class="monthDays">17</th>
            <th class="monthDays">18</th>
            <th class="monthDays">19</th>
            <th class="monthDays">20</th>
            <th class="monthDays">21</th>
            <th class="monthDays">22</th>
            <th class="monthDays">23</th>
            <th class="monthDays">24</th>
            <th class="monthDays">25</th>
            <th class="monthDays">26</th>
            <th class="monthDays">27</th>
            <th class="monthDays">28</th>
            <th class="monthDays">29</th>
            <th class="monthDays">30</th>
            <th class="monthDays">31</th>
            <th class="otherInfo">School Days</th>
            <th class="otherInfo">Total Present</th>
            <th class="otherInfo">Total Absent</th>
            <th class="otherInfo">Attendance Rate (%)</th>
            <th class="otherInfo">FUNCTION</th>
         </tr>

         <?php do{ ?>
         <tr>
            <td class="studentInfo"><?php echo $monthYearRow['lrn']; ?></td>
            <td class="studentInfo"><?php echo $monthYearRow['student_name']; ?></td>
            <td class="studentInfo"><?php echo $monthYearRow['section']; ?></td>                       
            <td class="classDays classDay01" id="classDay1" onclick="addAttendance(<?php echo $monthYearRow['lrn']; ?>, <?php echo 1; ?>)"><?php echo $monthYearRow['1']; ?></td>
            <td class="classDays classDay02" id="classDay2" onclick="addAttendance(<?php echo $monthYearRow['lrn']; ?>, <?php echo 2; ?>)"><?php echo $monthYearRow['2']; ?></td>
            <td class="classDays classDay03" id="classDay3" onclick="addAttendance(<?php echo $monthYearRow['lrn']; ?>, <?php echo 3; ?>)"><?php echo $monthYearRow['3']; ?></td>
            <td class="classDays classDay04" id="classDay4" onclick="addAttendance(<?php echo $monthYearRow['lrn']; ?>, <?php echo 4; ?>)"><?php echo $monthYearRow['4']; ?></td>
            <td class="classDays classDay05" id="classDay5" onclick="addAttendance(<?php echo $monthYearRow['lrn']; ?>, <?php echo 5; ?>)"><?php echo $monthYearRow['5']; ?></td>
            <td class="classDays classDay06" id="classDay6" onclick="addAttendance(<?php echo $monthYearRow['lrn']; ?>, <?php echo 6; ?>)"><?php echo $monthYearRow['6']; ?></td>
            <td class="classDays classDay07" id="classDay7" onclick="addAttendance(<?php echo $monthYearRow['lrn']; ?>, <?php echo 7; ?>)"><?php echo $monthYearRow['7']; ?></td>
            <td class="classDays classDay08" id="classDay8" onclick="addAttendance(<?php echo $monthYearRow['lrn']; ?>, <?php echo 8; ?>)"><?php echo $monthYearRow['8']; ?></td>
            <td class="classDays classDay09" id="classDay9" onclick="addAttendance(<?php echo $monthYearRow['lrn']; ?>, <?php echo 9; ?>)"><?php echo $monthYearRow['9']; ?></td>
            <td class="classDays classDay10" id="classDay10" onclick="addAttendance(<?php echo $monthYearRow['lrn']; ?>, <?php echo 10; ?>)"><?php echo $monthYearRow['10']; ?></td>
            <td class="classDays classDay11" id="classDay11" onclick="addAttendance(<?php echo $monthYearRow['lrn']; ?>, <?php echo 11; ?>)"><?php echo $monthYearRow['11']; ?></td>
            <td class="classDays classDay12" id="classDay12" onclick="addAttendance(<?php echo $monthYearRow['lrn']; ?>, <?php echo 12; ?>)"><?php echo $monthYearRow['12']; ?></td>
            <td class="classDays classDay13" id="classDay13" onclick="addAttendance(<?php echo $monthYearRow['lrn']; ?>, <?php echo 13; ?>)"><?php echo $monthYearRow['13']; ?></td>
            <td class="classDays classDay14" id="classDay14" onclick="addAttendance(<?php echo $monthYearRow['lrn']; ?>, <?php echo 14; ?>)"><?php echo $monthYearRow['14']; ?></td>
            <td class="classDays classDay15" id="classDay15" onclick="addAttendance(<?php echo $monthYearRow['lrn']; ?>, <?php echo 15; ?>)"><?php echo $monthYearRow['15']; ?></td>
            <td class="classDays classDay16" id="classDay16" onclick="addAttendance(<?php echo $monthYearRow['lrn']; ?>, <?php echo 16; ?>)"><?php echo $monthYearRow['16']; ?></td>
            <td class="classDays classDay17" id="classDay17" onclick="addAttendance(<?php echo $monthYearRow['lrn']; ?>, <?php echo 17; ?>)"><?php echo $monthYearRow['17']; ?></td>
            <td class="classDays classDay18" id="classDay18" onclick="addAttendance(<?php echo $monthYearRow['lrn']; ?>, <?php echo 18; ?>)"><?php echo $monthYearRow['18']; ?></td>
            <td class="classDays classDay19" id="classDay19" onclick="addAttendance(<?php echo $monthYearRow['lrn']; ?>, <?php echo 19; ?>)"><?php echo $monthYearRow['19']; ?></td>
            <td class="classDays classDay20" id="classDay20" onclick="addAttendance(<?php echo $monthYearRow['lrn']; ?>, <?php echo 20; ?>)"><?php echo $monthYearRow['20']; ?></td>
            <td class="classDays classDay21" id="classDay21" onclick="addAttendance(<?php echo $monthYearRow['lrn']; ?>, <?php echo 21; ?>)"><?php echo $monthYearRow['21']; ?></td>
            <td class="classDays classDay22" id="classDay22" onclick="addAttendance(<?php echo $monthYearRow['lrn']; ?>, <?php echo 22; ?>)"><?php echo $monthYearRow['22']; ?></td>
            <td class="classDays classDay23" id="classDay23" onclick="addAttendance(<?php echo $monthYearRow['lrn']; ?>, <?php echo 23; ?>)"><?php echo $monthYearRow['23']; ?></td>
            <td class="classDays classDay24" id="classDay24" onclick="addAttendance(<?php echo $monthYearRow['lrn']; ?>, <?php echo 24; ?>)"><?php echo $monthYearRow['24']; ?></td>
            <td class="classDays classDay25" id="classDay25" onclick="addAttendance(<?php echo $monthYearRow['lrn']; ?>, <?php echo 25; ?>)"><?php echo $monthYearRow['25']; ?></td>
            <td class="classDays classDay26" id="classDay26" onclick="addAttendance(<?php echo $monthYearRow['lrn']; ?>, <?php echo 26; ?>)"><?php echo $monthYearRow['26']; ?></td>
            <td class="classDays classDay27" id="classDay27" onclick="addAttendance(<?php echo $monthYearRow['lrn']; ?>, <?php echo 27; ?>)"><?php echo $monthYearRow['27']; ?></td>
            <td class="classDays classDay28" id="classDay28" onclick="addAttendance(<?php echo $monthYearRow['lrn']; ?>, <?php echo 27; ?>)"><?php echo $monthYearRow['28']; ?></td>
            <td class="classDays classDay29" id="classDay29" onclick="addAttendance(<?php echo $monthYearRow['lrn']; ?>, <?php echo 29; ?>)"><?php echo $monthYearRow['29']; ?></td>
            <td class="classDays classDay30" id="classDay30" onclick="addAttendance(<?php echo $monthYearRow['lrn']; ?>, <?php echo 30; ?>)"><?php echo $monthYearRow['30']; ?></td>
            <td class="classDays classDay31" id="classDay31" onclick="addAttendance(<?php echo $monthYearRow['lrn']; ?>, <?php echo 31; ?>)"><?php echo $monthYearRow['31']; ?></td>
            <td class="studentInfo"><?php echo $monthYearRow['school_days']; ?></td>
            <td class="studentInfo"><?php echo $monthYearRow['present_total']; ?></td>
            <td class="studentInfo"><?php echo $monthYearRow['absent_total']; ?></td>
            <td class="studentInfo"><?php echo $monthYearRow['attendance_rate']; ?></td>
            <td class="studentInfo">UPDATE</td>
         </tr>
         <?php } while($monthYearRow = mysqli_fetch_assoc($initiateSelectSql))?>

      
         <!-- <tr>
            <td class="studentInfo">136618123456</td>
            <td class="studentInfo">cyrus c. cantero</td>
            <td class="studentInfo">STEM 11-1</td>
            <td class="classDays classDay01"  onclick="addAttendance(<?php echo "12345"; ?>)"></td>
            <td class="classDays classDay02"></td>
            <td class="classDays classDay03"></td>
            <td class="classDays classDay04"></td>
            <td class="classDays classDay05"></td>
            <td class="classDays classDay06"></td>
            <td class="classDays classDay07"></td>
            <td class="classDays classDay08"></td>
            <td class="classDays classDay09"></td>
            <td class="classDays classDay10"></td>
            <td class="classDays classDay11"></td>
            <td class="classDays classDay12"></td>
            <td class="classDays classDay13"></td>
            <td class="classDays classDay14"></td>
            <td class="classDays classDay15"></td>
            <td class="classDays classDay16"></td>
            <td class="classDays classDay17"></td>
            <td class="classDays classDay18"></td>
            <td class="classDays classDay19"></td>
            <td class="classDays classDay20"></td>
            <td class="classDays classDay21"></td>
            <td class="classDays classDay22"></td>
            <td class="classDays classDay23"></td>
            <td class="classDays classDay24"></td>
            <td class="classDays classDay25"></td>
            <td class="classDays classDay26"></td>
            <td class="classDays classDay27"></td>
            <td class="classDays classDay28"></td>
            <td class="classDays classDay29"></td>
            <td class="classDays classDay30"></td>
            <td class="classDays classDay31"></td>
            <td class="studentInfo">21</td>
            <td class="studentInfo">21</td>
            <td class="studentInfo">0</td>
            <td class="studentInfo">100%</td>
            <td class="studentInfo">EDIT</td>
         </tr>

         <tr>
            <td class="studentInfo">136612070392</td>
            <td class="studentInfo">john edrich viray</td>
            <td class="studentInfo">STEM 11-1</td>
            <td class="classDays classDay01"></td>
            <td class="classDays classDay02"></td>
            <td class="classDays classDay03"></td>
            <td class="classDays classDay04"></td>
            <td class="classDays classDay05"></td>
            <td class="classDays classDay06"></td>
            <td class="classDays classDay07"></td>
            <td class="classDays classDay08"></td>
            <td class="classDays classDay09"></td>
            <td class="classDays classDay10"></td>
            <td class="classDays classDay11"></td>
            <td class="classDays classDay12"></td>
            <td class="classDays classDay13"></td>
            <td class="classDays classDay14"></td>
            <td class="classDays classDay15"></td>
            <td class="classDays classDay16"></td>
            <td class="classDays classDay17"></td>
            <td class="classDays classDay18"></td>
            <td class="classDays classDay19"></td>
            <td class="classDays classDay20"></td>
            <td class="classDays classDay21"></td>
            <td class="classDays classDay22"></td>
            <td class="classDays classDay23"></td>
            <td class="classDays classDay24"></td>
            <td class="classDays classDay25"></td>
            <td class="classDays classDay26"></td>
            <td class="classDays classDay27"></td>
            <td class="classDays classDay28"></td>
            <td class="classDays classDay29"></td>
            <td class="classDays classDay30"></td>
            <td class="classDays classDay31"></td>
            <td class="studentInfo">21</td>
            <td class="studentInfo">21</td>
            <td class="studentInfo">0</td>
            <td class="studentInfo">100%</td>
            <td class="studentInfo">EDIT</td>
         </tr>

         <tr>
            <td class="studentInfo">136618070392</td>
            <td class="studentInfo">paolo rafael s. tampico</td>
            <td class="studentInfo">ICT 11-1</td>
            <td class="classDays classDay01"></td>
            <td class="classDays classDay02"></td>
            <td class="classDays classDay03"></td>
            <td class="classDays classDay04"></td>
            <td class="classDays classDay05"></td>
            <td class="classDays classDay06"></td>
            <td class="classDays classDay07"></td>
            <td class="classDays classDay08"></td>
            <td class="classDays classDay09"></td>
            <td class="classDays classDay10"></td>
            <td class="classDays classDay11"></td>
            <td class="classDays classDay12"></td>
            <td class="classDays classDay13"></td>
            <td class="classDays classDay14"></td>
            <td class="classDays classDay15"></td>
            <td class="classDays classDay16"></td>
            <td class="classDays classDay17"></td>
            <td class="classDays classDay18"></td>
            <td class="classDays classDay19"></td>
            <td class="classDays classDay20"></td>
            <td class="classDays classDay21"></td>
            <td class="classDays classDay22"></td>
            <td class="classDays classDay23"></td>
            <td class="classDays classDay24"></td>
            <td class="classDays classDay25"></td>
            <td class="classDays classDay26"></td>
            <td class="classDays classDay27"></td>
            <td class="classDays classDay28"></td>
            <td class="classDays classDay29"></td>
            <td class="classDays classDay30"></td>
            <td class="classDays classDay31"></td>
            <td class="studentInfo">21</td>
            <td class="studentInfo">21</td>
            <td class="studentInfo">0</td>
            <td class="studentInfo">100%</td>
            <td class="studentInfo">EDIT</td>
         </tr>

         <tr>
            <td class="studentInfo">223505070048</td>
            <td class="studentInfo">arabella belardo</td>
            <td class="studentInfo">ICT 11-1</td>
            <td class="classDays classDay01"></td>
            <td class="classDays classDay02"></td>
            <td class="classDays classDay03"></td>
            <td class="classDays classDay04"></td>
            <td class="classDays classDay05"></td>
            <td class="classDays classDay06"></td>
            <td class="classDays classDay07"></td>
            <td class="classDays classDay08"></td>
            <td class="classDays classDay09"></td>
            <td class="classDays classDay10"></td>
            <td class="classDays classDay11"></td>
            <td class="classDays classDay12"></td>
            <td class="classDays classDay13"></td>
            <td class="classDays classDay14"></td>
            <td class="classDays classDay15"></td>
            <td class="classDays classDay16"></td>
            <td class="classDays classDay17"></td>
            <td class="classDays classDay18"></td>
            <td class="classDays classDay19"></td>
            <td class="classDays classDay20"></td>
            <td class="classDays classDay21"></td>
            <td class="classDays classDay22"></td>
            <td class="classDays classDay23"></td>
            <td class="classDays classDay24"></td>
            <td class="classDays classDay25"></td>
            <td class="classDays classDay26"></td>
            <td class="classDays classDay27"></td>
            <td class="classDays classDay28"></td>
            <td class="classDays classDay29"></td>
            <td class="classDays classDay30"></td>
            <td class="classDays classDay31"></td>
            <td class="studentInfo">21</td>
            <td class="studentInfo">21</td>
            <td class="studentInfo">0</td>
            <td class="studentInfo">100%</td>
            <td class="studentInfo">EDIT</td>
         </tr>

         <tr>
            <td class="studentInfo">136606090102</td>
            <td class="studentInfo">monica e. paredes</td>
            <td class="studentInfo">ICT 11-1</td>
            <td class="classDays classDay01"></td>
            <td class="classDays classDay02"></td>
            <td class="classDays classDay03"></td>
            <td class="classDays classDay04"></td>
            <td class="classDays classDay05"></td>
            <td class="classDays classDay06"></td>
            <td class="classDays classDay07"></td>
            <td class="classDays classDay08"></td>
            <td class="classDays classDay09"></td>
            <td class="classDays classDay10"></td>
            <td class="classDays classDay11"></td>
            <td class="classDays classDay12"></td>
            <td class="classDays classDay13"></td>
            <td class="classDays classDay14"></td>
            <td class="classDays classDay15"></td>
            <td class="classDays classDay16"></td>
            <td class="classDays classDay17"></td>
            <td class="classDays classDay18"></td>
            <td class="classDays classDay19"></td>
            <td class="classDays classDay20"></td>
            <td class="classDays classDay21"></td>
            <td class="classDays classDay22"></td>
            <td class="classDays classDay23"></td>
            <td class="classDays classDay24"></td>
            <td class="classDays classDay25"></td>
            <td class="classDays classDay26"></td>
            <td class="classDays classDay27"></td>
            <td class="classDays classDay28"></td>
            <td class="classDays classDay29"></td>
            <td class="classDays classDay30"></td>
            <td class="classDays classDay31"></td>
            <td class="studentInfo">21</td>
            <td class="studentInfo">21</td>
            <td class="studentInfo">0</td>
            <td class="studentInfo">100%</td>
            <td class="studentInfo">EDIT</td>
         </tr> -->


      </table>
   </section>

   <footer>
      <div class="fdswdLogo">
         <div>
            <img src="../assets/dswd.png" alt="DWSD LOGO">
         </div>
      </div>

      <div class="fdepEdLogo">
         <div>
            <img src="../assets/depEdSeal.png" alt="DEPED SEAL">
         </div>
      </div>

      <div class="fcalCityLogo">
         <div>
            <img src="../assets/calCity.png" alt="CALOOCAN CITY LOGO">
         </div>
      </div>

      <div class="fCalHighLogo">
         <div>
            <img src="../assets/calHigh.png" alt="CALOOCAN HIGH SCHOOL">
         </div>
      </div>

      <div class="fFourPs">
         <div>
            <img src="../assets/fourPs.png" alt="4P'S LOGO">
         </div>
      </div>
   </footer>


</body>

</html>