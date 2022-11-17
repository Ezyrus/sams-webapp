<?php
session_start();
require_once "../databaseConnection.php";
require_once "getMonthRecords.php";
$_SESSION['messageUpdate'] = "";
$_SESSION['monthYear'] = "";
?>

<!DOCTYPE html>
<html lang="en">

<head>

   <link href="https://fonts.googleapis.com/css2?family=Poppins&family=Roboto+Mono&family=Tomorrow&display=swap" rel="stylesheet">

   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">

   <link rel="stylesheet" href="../styles/mainDashboardUI.css?v=<?php echo time(); ?>">
   <link rel="stylesheet" href="../styles/header-footer.css?v=<?php echo time(); ?>">
   <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
   <script src="../js/gradeLevel.js"></script>

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

      <div class="back-container">
         <h1 onclick="history.go(-1);">
            < BACK</h1>
      </div>

      <div class="title">
            <h3><a href="admin_dashboard-gradeLevel.php">dashboard</a></h3>
        </div>

      <div class="admin-container">

         <h6 class="adminLogged">Admin : <span><?php echo $_SESSION['username']; ?></span></h6>

         <h2 class="logout">
            <a href="../logout.php">logout</a>
         </h2>

      </div>
   </section>

   <section class="schoolRecord">

      <div class="grade-records">

         <div class="records">

            <h1 class="title">Grade 12 Records</h1>

            <div class="year">
               <h5 onclick="noData()"><a href="#"> < </a></h5>
               <h6 id="recentYear">Year 202<span>2</span></h6>
               <h5><a href="admin_dashboard-grade12year2023.php"> > </a></h5>
            </div>

            <div class="month">
               <div class="JanApr">
                  <h3 onclick="noData()"><a href="#">January</a></h3>
                  <h3 onclick="noData()"><a href="#">February</a></h3>
                  <h3 onclick="noData()"><a href="#">March</a></h3>
                  <h3 onclick="noData()"><a href="#">April</a></h3>
               </div>

               <div class="MayAug">
                  <h3 onclick="noData()"><a href="#">May</a></h3>
                  <h3 onclick="noData()"><a href="#">June</a></h3>
                  <h3 onclick="noData()"><a href="#">July</a></h3>
                  <h3 onclick="noData()"><a href="#">August</a></h3>
               </div>

               <div class="SepDec">
                  <h3 onclick="noData()"><a href="#">September</a></h3>
                  <h3><a href="../grade12/grade12october2022.php">October</a></h3>
                  <h3><a href="../grade12/grade12november2022.php">November</a></h3>
                  <h3><a href="../grade12/grade12december2022.php">December</a></h3>
               </div>
            </div>


         </div>

      </div>

   </section>

   <section class="graphicOctoberContainer">
      
      <div class="october">
         <h1 class="title">October</h1>

         <div class="canvasContainer">
            <canvas id="octChart">
            </canvas>
         </div>
      </div>

   </section>

   <section class="graphicNovemberContainer">
      
      <div class="november">
         <h1 class="title">November</h1>

         <div class="canvasContainer">
            <canvas id="novChart">
            </canvas>
         </div>
      </div>

   </section>

   <section class="graphicDecemberContainer">
      
      <div class="december">
         <h1 class="title">December</h1>

         <div class="canvasContainer">
            <canvas id="decChart">
            </canvas>
         </div>
      </div>

   </section>
   
   <?php 
      $oct2022 = new gr12October2022();
      $initiateSelectOct2022 = $oct2022->monthRecord();
      $oct2022Lrn = $oct2022->studentLrn;
      $oct2022Name = $oct2022->studentName;
      $oct2022Present = $oct2022->studentTotalPresent;
      $oct2022Absent = $oct2022->studentTotalAbsent;
      $oct2022SchoolDays = $oct2022->studentTotalSchoolDays;

      $nov2022 = new gr12November2022();
      $initiateSelectNov2022 = $nov2022->monthRecord();
      $nov2022Lrn = $nov2022->studentLrn;
      $nov2022Name = $nov2022->studentName;
      $nov2022Present = $nov2022->studentTotalPresent;
      $nov2022Absent = $nov2022->studentTotalAbsent;
      $nov2022SchoolDays = $nov2022->studentTotalSchoolDays;

      $dec2022 = new gr12December2022();
      $initiateSelectDec2022 = $dec2022->monthRecord();
      $dec2022Lrn = $dec2022->studentLrn;
      $dec2022Name = $dec2022->studentName;
      $dec2022Present = $dec2022->studentTotalPresent;
      $dec2022Absent = $dec2022->studentTotalAbsent;
      $dec2022SchoolDays = $dec2022->studentTotalSchoolDays;
   ?>

   <script>
      const octChart = document.getElementById('octChart');
      const novChart = document.getElementById('novChart');
      const decChart = document.getElementById('decChart');

      Chart.defaults.font.size = 15;
      new Chart(octChart, {
         type: 'bar',
       
         data: {
            labels: [<?php echo ' " '.implode(' ", "  ', $oct2022Name).' " ' ?>],
               datasets: [{
               label: 'Total Present',
               backgroundColor: ['green'],
               data: [<?php echo ' " '.implode(' ", "  ', $oct2022Present).' " ' ?>],
               borderWidth: 0,
               }, {
                  label: 'Total Present',
                  backgroundColor: ['red'],
                  data: [<?php echo ' " '.implode(' ", "  ', $oct2022Absent).' " ' ?>],
                   borderWidth: 0
               }, {
                  label: 'Total School Days',
                  backgroundColor: ['yellow'],
                  data: [<?php echo ' " '.implode(' ", "  ', $oct2022SchoolDays).' " ' ?>],
                   borderWidth: 0
               }]
         }, 
         options: {
            scales: {
            y: {
               beginAtZero: true
            }
            }
         }
      });

      new Chart(novChart, {
         type: 'bar',
       
         data: {
            labels: [<?php echo ' " '.implode(' ", "  ', $nov2022Name).' " ' ?>],
               datasets: [{
               label: 'Total Present',
               backgroundColor: ['green'],
               data: [<?php echo ' " '.implode(' ", "  ', $nov2022Present).' " ' ?>],
               borderWidth: 0,
               }, {
                  label: 'Total Present',
                  backgroundColor: ['red'],
                  data: [<?php echo ' " '.implode(' ", "  ', $nov2022Absent).' " ' ?>],
                   borderWidth: 0
               }, {
                  label: 'Total School Days',
                  backgroundColor: ['yellow'],
                  data: [<?php echo ' " '.implode(' ", "  ', $nov2022SchoolDays).' " ' ?>],
                   borderWidth: 0
               }]
         }, 
         options: {
            scales: {
            y: {
               beginAtZero: true
            }
            }
         }
      });

      new Chart(decChart, {
         type: 'bar',
       
         data: {
            labels: [<?php echo ' " '.implode(' ", "  ', $dec2022Name).' " ' ?>],
               datasets: [{
               label: 'Total Present',
               backgroundColor: ['green'],
               data: [<?php echo ' " '.implode(' ", "  ', $dec2022Present).' " ' ?>],
               borderWidth: 0,
               }, {
                  label: 'Total Present',
                  backgroundColor: ['red'],
                  data: [<?php echo ' " '.implode(' ", "  ', $dec2022Absent).' " ' ?>],
                   borderWidth: 0
               }, {
                  label: 'Total School Days',
                  backgroundColor: ['yellow'],
                  data: [<?php echo ' " '.implode(' ", "  ', $dec2022SchoolDays).' " ' ?>],
                   borderWidth: 0
               }]
         }, 
         options: {
            scales: {
            y: {
               beginAtZero: true
            }
            }
         }
      });
   </script>

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