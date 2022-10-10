<!DOCTYPE html>
<html lang="en">

<head>

   <link href="https://fonts.googleapis.com/css2?family=Poppins&family=Roboto+Mono&family=Tomorrow&display=swap" rel="stylesheet">
   
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">

   <link rel="stylesheet" href="styles/schoolYear11.css?v=<?php echo time(); ?>">
   <script src="js/schoolYear11.js"></script>
   <title>Student Attendance Monitoring System</title>

</head>

<body>

   <header>
      <div class="calLogo">
         <div>
            <img src="assets/calHigh.png" alt="Caloocan Highschool Logo">
         </div>
      </div>

      <div class="title">
         <h2>Student Attendance Monitoring System</h2>
         <h5>4P's Student Members Monitoring System</h5>
      </div>

      <div class="depEdLogo">
         <div>
            <img src="assets/depEd.png" alt="DepEd Logo">
         </div>
      </div>
   </header>

   <div class="schoolYearContainer">

      <div class="year">
         <h6 onclick="previousYear()"><</h6>
         <h6 id="recentYear">2022-2023</h6>
         <h6 onclick="nextYear()">></h6>
      </div>

      <div class="month">

         <div class="JanApr">
            <h3 onclick="noData()">January</h3>
            <h3 onclick="noData()">February</h3>
            <h3 onclick="noData()">March</h3>
            <h3 onclick="noData()">April</h3>
         </div>

         <div class="MayAug">
            <h3 onclick="noData()">May</h3>
            <h3 onclick="noData()">June</h3>
            <h3 onclick="noData()">July</h3>
            <h3 onclick="noData()">August</h3>
         </div>

         <div class="SepDec">
            <h3 onclick="noData()">September</h3>
            <h3>October</h3>
            <h3 onclick="noData()">November</h3>
            <h3 onclick="noData()">December</h3>
         </div>

      </div>

   </div>

      

   <footer>

      <div class="fdswdLogo">
         <div>
            <img src="assets/dswd.png" alt="DWSD LOGO">
         </div>
      </div>

      <div class="fdepEdLogo">
         <div>
            <img src="assets/depEdSeal.png" alt="DEPED SEAL">
         </div>
      </div>

      <div class="fcalCityLogo">
         <div>
            <img src="assets/calCity.png" alt="CALOOCAN CITY LOGO">
         </div>
      </div>

      <div class="fCalHighLogo">
         <div>
            <img src="assets/calHigh.png" alt="CALOOCAN HIGH SCHOOL">
         </div>
      </div>

      <div class="fFourPs">
         <div>
            <img src="assets/fourPs.png" alt="4P'S LOGO">
         </div>
      </div>

   </footer>

   
</body>

</html>