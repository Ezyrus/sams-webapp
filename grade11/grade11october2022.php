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
         <h3>Admin</h3>
         <h6><?php echo $_SESSION['username']; ?></h6>
      </div>

      <div class="title">
        <h3>October 2022</h3>
         <h6>4p's Grade 11 Student Records</h6>
         <hr>
         <h3><a href="#">Add students</a></h3>
      </div>

      <div class="legend">
         <div class="present">
            <h3>present :</h3>
            <h3 class="color present">color</h3>
         </div>

         <div class="absent">
            <h3>absent :</h3>
            <h3 class="color absent">color</h3>
         </div>

         <div class="schoolDays">
            <h3>No Class :</h3>
            <h3 class="color schoolDays">color</h3>
         </div>
      </div>

      
      <div class="navigate">
      <h2 class="goback"><a href="grade11year2022.php">go back</a></h2>
      <h1><a href="../logout.php">logout</a></h1>
      </div>

   </section>

   <section class="main">

      <table>
         <tr class="tableHeader">
            <th  class="otherInfo">LRN</th>
            <th  class="otherInfo">Student Name</th>
            <th  class="otherInfo">Section</th>
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
            <th  class="otherInfo">School Days</th>
            <th  class="otherInfo">Total Present</th>
            <th  class="otherInfo">Total Absent</th>
         </tr>

         <tr>
            <td class="studentInfo">136618123456</td>
            <td class="studentInfo">cyrus c. cantero</td>
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