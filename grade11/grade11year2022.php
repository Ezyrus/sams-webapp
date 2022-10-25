<?php 
   session_start(); 
?>

<!DOCTYPE html>
<html lang="en">

<head>

   <link href="https://fonts.googleapis.com/css2?family=Poppins&family=Roboto+Mono&family=Tomorrow&display=swap" rel="stylesheet">
   
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">

   <link rel="stylesheet" href="../styles/grade11year2022.css?v=<?php echo time(); ?>">
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

   <div class="schoolYearContainer">
      <div class="year">
         <h5 onclick="noData()"><</h5>
         <h6 id="recentYear"><a href="../gradeLevel.php">Grade 11</a> - Year 2022</h6>
         <h5><a href="grade11year2023.php">></a></h5>
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
            <h3><a href="./october2022/grade11october2022.php">October</a></h3>
            <h3 onclick="noData()"><a href="#">November</a></h3>
            <h3 onclick="noData()"><a href="#">December</a></h3>
         </div>
      </div>
   </div>

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