<?php
session_start();

$adminLogged = $_SESSION['username'];
if ($adminLogged == "") {
    header('Location:/Sams/index.php');
}

error_reporting(0);  //hide errors
require_once "../databaseConnection.php";
require_once "getMonthRecords.php";
$_SESSION['messageUpdate'] = "";
$_SESSION['monthYear'] = "";

$adminLogged = $_SESSION['username'];
if ($adminLogged == "") {
    header('Location:/Sams/index.php');
}

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

            <h1 class="title">Grade 11 Records</h1>

            <div class="year">
               <h5><a href="admin_dashboard-grade11year2022.php"> < </a></h5>
               <h6 id="recentYear">Year 202<span>3</span></h6>
               <h5 onclick="noData()"> > </h5>
            </div>

            <div class="month">
               <div class="JanApr">
                  <h3><a href="../grade11/grade11january2023.php">January</a></h3>
                  <h3><a href="../grade11/grade11february2023.php">February</a></h3>
                  <h3><a href="../grade11/grade11march2023.php">March</a></h3>
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
                  <h3  onclick="noData()"><a href="#">October</a></h3>
                  <h3 onclick="noData()"><a href="#">November</a></h3>
                  <h3 onclick="noData()"><a href="#">December</a></h3>
               </div>
            </div>


         </div>

      </div>

   </section>

   <section class="graphicJanuaryContainer">
      
      <div class="january">
         <h1 class="title">January</h1>

         <div class="canvasContainer">
            <canvas id="janChart">
            </canvas>
         </div>
      </div>

   </section>

   <section class="graphicFebruaryContainer">
      
      <div class="february">
         <h1 class="title">February</h1>

         <div class="canvasContainer">
            <canvas id="febChart">
            </canvas>
         </div>
      </div>

   </section>

   <section class="graphicMarchContainer">
      
      <div class="march">
         <h1 class="title">March</h1>

         <div class="canvasContainer">
            <canvas id="marchChart">
            </canvas>
         </div>
      </div>

   </section>

   <?php 
      $jan2023 = new gr11January2023();
      $initiateSelectJan2023 = $jan2023->monthRecord();
      $jan2023Lrn = $jan2023->studentLrn;
      $jan2023Name = $jan2023->studentName;
      $jan2023Present = $jan2023->studentTotalPresent;
      $jan2023Absent = $jan2023->studentTotalAbsent;
      $jan2023SchoolDays = $jan2023->studentTotalSchoolDays;
      $jan2023NumRows = $jan2023->studentTableNumRows;

      $feb2023= new gr11February2023();
      $initiateSelectFeb2023 = $feb2023->monthRecord();
      $feb2023Lrn = $feb2023->studentLrn;
      $feb2023Name = $feb2023->studentName;
      $feb2023Present = $feb2023->studentTotalPresent;
      $feb2023Absent = $feb2023->studentTotalAbsent;
      $feb2023SchoolDays = $feb2023->studentTotalSchoolDays;
      $feb2023NumRows = $feb2023->studentTableNumRows;

      $march2023 = new gr11March2023();
      $initiateSelectMarch2023 = $march2023->monthRecord();
      $march2023Lrn = $march2023->studentLrn;
      $march2023Name = $march2023->studentName;
      $march2023Present = $march2023->studentTotalPresent;
      $march2023Absent = $march2023->studentTotalAbsent;
      $march2023SchoolDays = $march2023->studentTotalSchoolDays;
      $march2023NumRows = $march2023->studentTableNumRows;
   ?>

   <script>
      const janChart = document.getElementById('janChart');
      const febChart = document.getElementById('febChart');
      const marchChart = document.getElementById('marchChart');

      Chart.defaults.font.size = 15;

      if ('<?php echo $jan2023NumRows; ?>' > 0) {
         new Chart(janChart, {
            type: 'bar',
       
            data: {
               labels: [<?php echo ' " '.implode(' ", "  ', $jan2023Name).' " ' ?>],
                  datasets: [{
                  label: 'Total Present',
                  backgroundColor: ['green'],
                  data: [<?php echo ' " '.implode(' ", "  ', $jan2023Present).' " ' ?>],
                  borderWidth: 0,
                  }, {
                     label: 'Total Present',
                     backgroundColor: ['red'],
                     data: [<?php echo ' " '.implode(' ", "  ', $jan2023Absent).' " ' ?>],
                     borderWidth: 0
                  }, {
                     label: 'Total School Days',
                     backgroundColor: ['yellow'],
                     data: [<?php echo ' " '.implode(' ", "  ', $jan2023SchoolDays).' " ' ?>],
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
      } else {
         var janChartContainer = janChart.parentElement;
         janChartContainer.style.height = '50%';
         janChartContainer.innerHTML = "<h3>No data to show here ...</h3>";
      }

      if ('<?php echo $feb2023NumRows; ?>' > 0) {
         new Chart(febChart, {
            type: 'bar',
         
            data: {
               labels: [<?php echo ' " '.implode(' ", "  ', $feb2023Name).' " ' ?>],
                  datasets: [{
                  label: 'Total Present',
                  backgroundColor: ['green'],
                  data: [<?php echo ' " '.implode(' ", "  ', $feb2023Present).' " ' ?>],
                  borderWidth: 0,
                  }, {
                     label: 'Total Present',
                     backgroundColor: ['red'],
                     data: [<?php echo ' " '.implode(' ", "  ', $feb2023Absent).' " ' ?>],
                     borderWidth: 0
                  }, {
                     label: 'Total School Days',
                     backgroundColor: ['yellow'],
                     data: [<?php echo ' " '.implode(' ", "  ', $feb2023SchoolDays).' " ' ?>],
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
      } else {
         var febChartContainer = febChart.parentElement;
         febChartContainer.style.height = '50%';
         febChartContainer.innerHTML = "<h3>No data to show here ...</h3>";
      }

      if ('<?php echo $march2023NumRows; ?>' > 0) {
         new Chart(marchChart, {
            type: 'bar',
       
            data: {
               labels: [<?php echo ' " '.implode(' ", "  ', $march2023Name).' " ' ?>],
                  datasets: [{
                  label: 'Total Present',
                  backgroundColor: ['green'],
                  data: [<?php echo ' " '.implode(' ", "  ', $march2023Present).' " ' ?>],
                  borderWidth: 0,
                  }, {
                     label: 'Total Present',
                     backgroundColor: ['red'],
                     data: [<?php echo ' " '.implode(' ", "  ', $march2023Absent).' " ' ?>],
                     borderWidth: 0
                  }, {
                     label: 'Total School Days',
                     backgroundColor: ['yellow'],
                     data: [<?php echo ' " '.implode(' ", "  ', $march2023SchoolDays).' " ' ?>],
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
      } else {
         var marchChartContainer = marchChart.parentElement;
         marchChartContainer.style.height = '50%';
         marchChartContainer.innerHTML = "<h3>No data to show here ...</h3>";
      }

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