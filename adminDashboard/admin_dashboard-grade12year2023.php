<?php
session_start();
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
               <h5><a href="admin_dashboard-grade12year2022.php"> < </a></h5>
               <h6 id="recentYear">Year 2023</h6>
               <h5 onclick="noData()"> > </h5>
            </div>

            <div class="month">
               <div class="JanApr">
                  <h3><a href="../grade12/grade12january2023.php">January</a></h3>
                  <h3><a href="../grade12/grade12february2023.php">February</a></h3onclick=>
                  <h3><a href="../grade12/grade12march2023.php">March</a></h3lick=>
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