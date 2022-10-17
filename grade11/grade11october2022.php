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

   <link rel="stylesheet" href="../styles/grade11october2022.css?v=<?php echo time(); ?>">

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
     
      <div class="admin">
         <h3>Administrator</h3>
         <h6><?php echo $_SESSION['username']; ?></h6>
      </div>

      <div class="title">
        <h3>October 2022</h3>
         <h6>4p's Grade 11 Student's Records</h6>
         <hr>
         <h3><a href="#">Register students</a></h3>
      </div>

      
      <div class="navigate">
      <h2 class="goback"><a href="grade11year2022.php">go back</a></h2>
      <h1><a href="../logout.php">logout</a></h1>
      </div>

   </section>

   <section class="main">

      <table>
         <tr>
            <th>Student ID</th>
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
            <th>School Days</th>
            <th>Total Present</th>
            <th>Total Absent</th>
         </tr>

         <tr>
            <td><a href="">1</a></td>
            <td>P</td>
            <td>P</td>
            <td>P</td>
            <td>P</td>
            <td>P</td>
            <td>P</td>
            <td>P</td>
            <td>P</td>
            <td>P</td>
            <td>P</td>
            <td>P</td>
            <td>P</td>
            <td>P</td>
            <td>P</td>
            <td>P</td>
            <td>P</td>
            <td>P</td>
            <td>P</td>
            <td>P</td>
            <td>P</td>
            <td>P</td>
            <td>P</td>
            <td>P</td>
            <td>P</td>
            <td>P</td>
            <td>P</td>
            <td>P</td>
            <td>P</td>
            <td>P</td>
            <td>P</td>
            <td>P</td>
            <td>21</td>
            <td>21</td>
            <td>0</td>
         </tr>
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