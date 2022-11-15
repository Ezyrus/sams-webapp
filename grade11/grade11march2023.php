<?php
   session_start();
   error_reporting(0);  //hide errors
   require_once "../databaseConnection.php";

   $selectMonthYearSql = "SELECT * FROM grade11_march2023";
   $initiateSelectSql = mysqli_query(databaseConnection(), $selectMonthYearSql);
   $monthYearRow = mysqli_fetch_assoc($initiateSelectSql);
   $selectTableNumRows = mysqli_num_rows($initiateSelectSql);

   $messageUpdate = $_SESSION['messageUpdate'];
   $_SESSION['monthYear'] = "grade11_march2023";
   $classDays = array();

?>

<!DOCTYPE html>
<html lang="en">

<head>

   <link href="https://fonts.googleapis.com/css2?family=Poppins&family=Roboto+Mono&family=Tomorrow&display=swap" rel="stylesheet">

   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">

   <link rel="stylesheet" href="../styles/mainAttendanceUI.css?v=<?php echo time(); ?>">
   <link rel="stylesheet" href="../styles/header-footer.css?v=<?php echo time(); ?>">
   <script src="../js/loader.js?v=<?php echo time(); ?>"></script>
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

         <h1><span class="green">︾ L</span>e<span class="red">ge</span>n<span class="yellow">ds</span></h1>



      </div>

      <div class="title">
         <h6 class="adminLogged">Admin : <span><?php echo $_SESSION['username']; ?></span></h6>

         <div>
            <h3>march 2023</h3>
            <h6>4p's Grade 11 Student Records</h6>
         </div>

      </div>

      <div class="navigate">

         <div>
            <h2 class="dashboard">
               <a href="../adminDashboard/admin_dashboard-gradeLevel.php">dashboard</a>
            </h2>
         </div>

         <div>
            <h2 class="addStudents"><a href="../studentAttendance/addStudents.php">
                  Add students</a>
            </h2>
            <h2 class="logout">
               <a href="../logout.php">logout ︾</a>
            </h2>
         </div>

      </div>

   </section>

   <section class="log">
      <h3><a href="../adminDashboard/admin_dashboard-gradeLevel.php">Grade 11 > </a><a href="../adminDashboard/admin_dashboard-grade11year2023.php">Year 2023 ></a><a href="grade11march2023.php"> march </a>
      </h3>

      <form action="grade11march2023_searchStudent.php" method="GET">
         <h3 class="downloadExcel" id="downloadExcel">
            <a href="../downloadRecord.php">Download Record</a>
         </h3>
         <input name="userSearch" type="text">
         <button type="submit">Search</button>
      </form>

      <h3 id="log">Log: <span><?php
                              if ($messageUpdate == "") {
                                 echo "...";
                              } else {
                                 echo "$messageUpdate";
                              }
                              ?></span>
      </h3>
   </section>

   <section class="main">
      <table id="studentRecords">
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

         <?php do { 
               if ($monthYearRow == 0) {
                    echo "   <td class='noData' colspan = '39'>
                 No data to display here, please add students ...
                 </td>";
               } else {
         ?>

            <form action="../studentAttendance/saveStudentAttendance.php?ID=<?php echo  $monthYearRow['lrn']; ?>" method="post" name="studentAttendanceRecord">
               <tr>

                  <td class="studentInfo"><?php echo $monthYearRow['lrn']; ?></td>
                  <td class="studentInfo"><?php echo $monthYearRow['student_name']; ?></td>
                  <td class="studentInfo"><?php echo $monthYearRow['section']; ?></td>

                  <td class="classDays classDay01">
                     <select name="classDay01" class="classDays classDay01" id="classDays classDay01">
                        <option disabled selected>
                           <?php echo $monthYearRow['1']; ?>
                        </option>
                        <option class="present" value="present">Present</option>
                        <option class="absent" value="absent">Absent</option>
                        <option class="noclass" value="noclass">NoClass</option>
                     </select>
                  </td>

                  <td class="classDays classDay2">
                     <select name="classDay02" class="classDays classDay02" id="classDays classDay02">
                        <option disabled selected>
                           <?php echo $monthYearRow['2']; ?>
                        </option>
                        <option class="present" value="present">Present</option>
                        <option class="absent" value="absent">Absent</option>
                        <option class="noclass" value="noclass">NoClass</option>
                     </select>
                  </td>

                  <td class="classDays classDay3">
                     <select name="classDay03" class="classDays classDay03" id="classDays classDay03">
                        <option disabled selected>
                           <?php echo $monthYearRow['3']; ?>
                        </option>
                        <option class="present" value="present">Present</option>
                        <option class="absent" value="absent">Absent</option>
                        <option class="noclass" value="noclass">NoClass</option>
                     </select>
                  </td>

                  <td class="classDays classDay4">
                     <select name="classDay04" class="classDays classDay04" id="classDays classDay04">
                        <option disabled selected>
                           <?php echo $monthYearRow['4']; ?>
                        </option>
                        <option class="present" value="present">Present</option>
                        <option class="absent" value="absent">Absent</option>
                        <option class="noclass" value="noclass">NoClass</option>
                     </select>
                  </td>

                  <td class="classDays classDay5">
                     <select name="classDay05" class="classDays classDay05" id="classDays classDay05">
                        <option disabled selected>
                           <?php echo $monthYearRow['5']; ?>
                        </option>
                        <option class="present" value="present">Present</option>
                        <option class="absent" value="absent">Absent</option>
                        <option class="noclass" value="noclass">NoClass</option>
                     </select>
                  </td>

                  <td class="classDays classDay6">
                     <select name="classDay06" class="classDays classDay06" id="classDays classDay06">
                        <option disabled selected>
                           <?php echo $monthYearRow['6']; ?>
                        </option>
                        <option class="present" value="present">Present</option>
                        <option class="absent" value="absent">Absent</option>
                        <option class="noclass" value="noclass">NoClass</option>
                     </select>
                  </td>

                  <td class="classDays classDay7">
                     <select name="classDay07" class="classDays classDay07" id="classDays classDay07">
                        <option disabled selected>
                           <?php echo $monthYearRow['7']; ?>
                        </option>
                        <option class="present" value="present">Present</option>
                        <option class="absent" value="absent">Absent</option>
                        <option class="noclass" value="noclass">NoClass</option>
                     </select>
                  </td>

                  <td class="classDays classDay8">
                     <select name="classDay08" class="classDays classDay08" id="classDays classDay08">
                        <option disabled selected>
                           <?php echo $monthYearRow['8']; ?>
                        </option>
                        <option class="present" value="present">Present</option>
                        <option class="absent" value="absent">Absent</option>
                        <option class="noclass" value="noclass">NoClass</option>
                     </select>
                  </td>

                  <td class="classDays classDay9">
                     <select name="classDay09" class="classDays classDay09" id="classDays classDay09">
                        <option disabled selected>
                           <?php echo $monthYearRow['9']; ?>
                        </option>
                        <option class="present" value="present">Present</option>
                        <option class="absent" value="absent">Absent</option>
                        <option class="noclass" value="noclass">NoClass</option>
                     </select>
                  </td>

                  <td class="classDays classDay10">
                     <select name="classDay10" class="classDays classDay10" id="classDays classDay10">
                        <option disabled selected>
                           <?php echo $monthYearRow['10']; ?>
                        </option>
                        <option class="present" value="present">Present</option>
                        <option class="absent" value="absent">Absent</option>
                        <option class="noclass" value="noclass">NoClass</option>
                     </select>
                  </td>

                  <td class="classDays classDay11">
                     <select name="classDay11" class="classDays classDay11" id="classDays classDay11">
                        <option disabled selected>
                           <?php echo $monthYearRow['11']; ?>
                        </option>
                        <option class="present" value="present">Present</option>
                        <option class="absent" value="absent">Absent</option>
                        <option class="noclass" value="noclass">NoClass</option>
                     </select>
                  </td>

                  <td class="classDays classDay12">
                     <select name="classDay12" class="classDays classDay12" id="classDays classDay12">
                        <option disabled selected>
                           <?php echo $monthYearRow['12']; ?>
                        </option>
                        <option class="present" value="present">Present</option>
                        <option class="absent" value="absent">Absent</option>
                        <option class="noclass" value="noclass">NoClass</option>
                     </select>
                  </td>

                  <td class="classDays classDay13">
                     <select name="classDay13" class="classDays classDay13" id="classDays classDay13">
                        <option disabled selected>
                           <?php echo $monthYearRow['13']; ?>
                        </option>
                        <option class="present" value="present">Present</option>
                        <option class="absent" value="absent">Absent</option>
                        <option class="noclass" value="noclass">NoClass</option>
                     </select>
                  </td>

                  <td class="classDays classDay14">
                     <select name="classDay14" class="classDays classDay14" id="classDays classDay14">
                        <option disabled selected>
                           <?php echo $monthYearRow['14']; ?>
                        </option>
                        <option class="present" value="present">Present</option>
                        <option class="absent" value="absent">Absent</option>
                        <option class="noclass" value="noclass">NoClass</option>
                     </select>
                  </td>

                  <td class="classDays classDay15">
                     <select name="classDay15" class="classDays classDay15" id="classDays classDay15">
                        <option disabled selected>
                           <?php echo $monthYearRow['15']; ?>
                        </option>
                        <option class="present" value="present">Present</option>
                        <option class="absent" value="absent">Absent</option>
                        <option class="noclass" value="noclass">NoClass</option>
                     </select>
                  </td>

                  <td class="classDays classDay16">
                     <select name="classDay16" class="classDays classDay16" id="classDays classDay16">
                        <option disabled selected>
                           <?php echo $monthYearRow['16']; ?>
                        </option>
                        <option class="present" value="present">Present</option>
                        <option class="absent" value="absent">Absent</option>
                        <option class="noclass" value="noclass">NoClass</option>
                     </select>
                  </td>

                  <td class="classDays classDay17">
                     <select name="classDay17" class="classDays classDay17" id="classDays classDay17">
                        <option disabled selected>
                           <?php echo $monthYearRow['17']; ?>
                        </option>
                        <option class="present" value="present">Present</option>
                        <option class="absent" value="absent">Absent</option>
                        <option class="noclass" value="noclass">NoClass</option>
                     </select>
                  </td>

                  <td class="classDays classDay18">
                     <select name="classDay18" class="classDays classDay18" id="classDays classDay18">
                        <option disabled selected>
                           <?php echo $monthYearRow['19']; ?>
                        </option>
                        <option class="present" value="present">Present</option>
                        <option class="absent" value="absent">Absent</option>
                        <option class="noclass" value="noclass">NoClass</option>
                     </select>
                  </td>

                  <td class="classDays classDay19">
                     <select name="classDay19" class="classDays classDay19" id="classDays classDay19">
                        <option disabled selected>
                           <?php echo $monthYearRow['19']; ?>
                        </option>
                        <option class="present" value="present">Present</option>
                        <option class="absent" value="absent">Absent</option>
                        <option class="noclass" value="noclass">NoClass</option>
                     </select>
                  </td>

                  <td class="classDays classDay20">
                     <select name="classDay20" class="classDays classDay20" id="classDays classDay20">
                        <option disabled selected>
                           <?php echo $monthYearRow['20']; ?>
                        </option>
                        <option class="present" value="present">Present</option>
                        <option class="absent" value="absent">Absent</option>
                        <option class="noclass" value="noclass">NoClass</option>
                     </select>
                  </td>

                  <td class="classDays classDay21">
                     <select name="classDay21" class="classDays classDay21" id="classDays classDay21">
                        <option disabled selected>
                           <?php echo $monthYearRow['21']; ?>
                        </option>
                        <option class="present" value="present">Present</option>
                        <option class="absent" value="absent">Absent</option>
                        <option class="noclass" value="noclass">NoClass</option>
                     </select>
                  </td>

                  <td class="classDays classDay22">
                     <select name="classDay22" class="classDays classDay22" id="classDays classDay22">
                        <option disabled selected>
                           <?php echo $monthYearRow['22']; ?>
                        </option>
                        <option class="present" value="present">Present</option>
                        <option class="absent" value="absent">Absent</option>
                        <option class="noclass" value="noclass">NoClass</option>
                     </select>
                  </td>

                  <td class="classDays classDay23">
                     <select name="classDay23" class="classDays classDay23" id="classDays classDay23">
                        <option disabled selected>
                           <?php echo $monthYearRow['23']; ?>
                        </option>
                        <option class="present" value="present">Present</option>
                        <option class="absent" value="absent">Absent</option>
                        <option class="noclass" value="noclass">NoClass</option>
                     </select>
                  </td>

                  <td class="classDays classDay24">
                     <select name="classDay24" class="classDays classDay24" id="classDays classDay24">
                        <option disabled selected>
                           <?php echo $monthYearRow['24']; ?>
                        </option>
                        <option class="present" value="present">Present</option>
                        <option class="absent" value="absent">Absent</option>
                        <option class="noclass" value="noclass">NoClass</option>
                     </select>
                  </td>

                  <td class="classDays classDay25">
                     <select name="classDay25" class="classDays classDay25" id="classDays classDay25">
                        <option disabled selected>
                           <?php echo $monthYearRow['25']; ?>
                        </option>
                        <option class="present" value="present">Present</option>
                        <option class="absent" value="absent">Absent</option>
                        <option class="noclass" value="noclass">NoClass</option>
                     </select>
                  </td>

                  <td class="classDays classDay26">
                     <select name="classDay26" class="classDays classDay26" id="classDays classDay26">
                        <option disabled selected>
                           <?php echo $monthYearRow['26']; ?>
                        </option>
                        <option class="present" value="present">Present</option>
                        <option class="absent" value="absent">Absent</option>
                        <option class="noclass" value="noclass">NoClass</option>
                     </select>
                  </td>

                  <td class="classDays classDay27">
                     <select name="classDay27" class="classDays classDay27" id="classDays classDay27">
                        <option disabled selected>
                           <?php echo $monthYearRow['27']; ?>
                        </option>
                        <option class="present" value="present">Present</option>
                        <option class="absent" value="absent">Absent</option>
                        <option class="noclass" value="noclass">NoClass</option>
                     </select>
                  </td>

                  <td class="classDays classDay28">
                     <select name="classDay28" class="classDays classDay28" id="classDays classDay28">
                        <option disabled selected>
                           <?php echo $monthYearRow['28']; ?>
                        </option>
                        <option class="present" value="present">Present</option>
                        <option class="absent" value="absent">Absent</option>
                        <option class="noclass" value="noclass">NoClass</option>
                     </select>
                  </td>

                  <td class="classDays classDay29">
                     <select name="classDay29" class="classDays classDay29" id="classDays classDay29">
                        <option disabled selected>
                           <?php echo $monthYearRow['29']; ?>
                        </option>
                        <option class="present" value="present">Present</option>
                        <option class="absent" value="absent">Absent</option>
                        <option class="noclass" value="noclass">NoClass</option>
                     </select>
                  </td>

                  <td class="classDays classDay30">
                     <select name="classDay30" class="classDays classDay30" id="classDays classDay30">
                        <option disabled selected>
                           <?php echo $monthYearRow['30']; ?>
                        </option>
                        <option class="present" value="present">Present</option>
                        <option class="absent" value="absent">Absent</option>
                        <option class="noclass" value="noclass">NoClass</option>
                     </select>
                  </td>

                  <td class="classDays classDay31">
                     <select name="classDay31" class="classDays classDay31" id="classDays classDay31">
                        <option disabled selected>
                           <?php echo $monthYearRow['31']; ?>
                        </option>
                        <option class="present" value="present">Present</option>
                        <option class="absent" value="absent">Absent</option>
                        <option class="noclass" value="noclass">NoClass</option>
                     </select>
                  </td>

                  <td class="studentInfo"><?php echo $monthYearRow['school_days']; ?></td>

                  <td class="studentInfo"><?php echo $monthYearRow['present_total']; ?></td>

                  <td class="studentInfo"><?php echo $monthYearRow['absent_total']; ?></td>

                  <td class="studentInfo"><?php echo $monthYearRow['attendance_rate']; ?>%</td>

                  <td class="studentInfo function">
                     <button type="submit" name="saveAttendance" id="loadLoader">SAVE</button>
                     <h3 class="removeStudent">
                        <a href="../studentAttendance/removeStudents.php?ID=<?php echo $monthYearRow['lrn']; ?>">REMOVE</a>
                     </h3>

                  </td>

               </tr>
            </form>

            <?php
               array_push($classDays, $monthYearRow['1']);
               array_push($classDays, $monthYearRow['2']);
               array_push($classDays, $monthYearRow['3']);
               array_push($classDays, $monthYearRow['4']);
               array_push($classDays, $monthYearRow['5']);
               array_push($classDays, $monthYearRow['6']);
               array_push($classDays, $monthYearRow['7']);
               array_push($classDays, $monthYearRow['8']);
               array_push($classDays, $monthYearRow['9']);
               array_push($classDays, $monthYearRow['10']);
               array_push($classDays, $monthYearRow['11']);
               array_push($classDays, $monthYearRow['12']);
               array_push($classDays, $monthYearRow['13']);
               array_push($classDays, $monthYearRow['14']);
               array_push($classDays, $monthYearRow['15']);
               array_push($classDays, $monthYearRow['16']);
               array_push($classDays, $monthYearRow['17']);
               array_push($classDays, $monthYearRow['18']);
               array_push($classDays, $monthYearRow['19']);
               array_push($classDays, $monthYearRow['20']);
               array_push($classDays, $monthYearRow['21']);
               array_push($classDays, $monthYearRow['22']);
               array_push($classDays, $monthYearRow['23']);
               array_push($classDays, $monthYearRow['24']);
               array_push($classDays, $monthYearRow['25']);
               array_push($classDays, $monthYearRow['26']);
               array_push($classDays, $monthYearRow['27']);
               array_push($classDays, $monthYearRow['28']);
               array_push($classDays, $monthYearRow['29']);
               array_push($classDays, $monthYearRow['30']);
               array_push($classDays, $monthYearRow['31']);

            ?>
               
            <?php 
               }
            } while ($monthYearRow = mysqli_fetch_assoc($initiateSelectSql)) ?>

         <?php           
             foreach ($classDays as $key => $value) {
                  if ($value == "present") {
                     echo "<script>
                     var classDays = document.querySelectorAll('tr td.classDays');
                     var classDaysLength = classDays.length;
                     for (var i = 0; i < classDaysLength; i++) {
                        classDays[". $key . "].style.background = 'green';  
                     }
                     </script>";
                     } else if ($value == "absent") {
                        echo "<script>
                        var classDays = document.querySelectorAll('tr td.classDays');
                        var classDaysLength = classDays.length;
                        for (var i = 0; i < classDaysLength; i++) {
                           classDays[". $key . "].style.background = 'red';
                        }
                        </script>";
                        } else {
                           echo "<script>
                           var classDays = document.querySelectorAll('tr td.classDays');
                           var classDaysLength = classDays.length;
                           for (var i = 0; i < classDaysLength; i++) {
                              classDays[". $key . "].style.background = 'yellow';
                           }
                           </script>";
                        }
                  }
         ?>
         
      </table>

      <script src="../js/studentAttendanceColor.js?v=<?php echo time(); ?>"></script>

      
   </section>

</body>

</html>