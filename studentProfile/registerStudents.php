<?php
   session_start();
   require_once "../databaseConnection.php";


   if (isset($_POST['registerStudent'])) {
      $studentLrn = $_POST['lrn'];
      $studentName = $_POST['name'];
      $studentSection = $_POST['section'];
      $studentAge = $_POST['age'];
      $studentAddress = $_POST['address'];
      $studentEmail = $_POST['email'];
      $studentNumber = $_POST['number'];

      $selectStudentSql = "SELECT * FROM students WHERE lrn = '$studentLrn'";

      $initiateSelectSql = mysqli_query(databaseConnection(), $selectStudentSql);

      $studentTableNumRows = mysqli_num_rows($initiateSelectSql);

      if ($studentTableNumRows) {
         echo '<script>alert("Student LRN :  ' . $studentLrn . ' already exist")</script>';
      } else {
         if (empty($studentLrn)) {
            echo '<script>alert("Student LRN field is required")</script>';
         } else {
            $insertToDatabase = "INSERT INTO `students` (`lrn`, `name`, `section`, `age`, `address`, `email`, `contact_number`) VALUES ('$studentLrn', '$studentName', '$studentSection', '$studentAge', '$studentAddress', '$studentEmail', '$studentNumber')";

            $startInsertion = mysqli_query(databaseConnection(), $insertToDatabase);

            $_SESSION['messageUpdate'] = "$studentLrn has been registered";
            
            echo '<script>alert("Student Added")</script>';
            echo header("Location: studentProfile.php");
         }
      }
   }

?>

<!DOCTYPE html>
<html lang="en">

<head>

   <link href="https://fonts.googleapis.com/css2?family=Poppins&family=Roboto+Mono&family=Tomorrow&display=swap" rel="stylesheet">

   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">

   <link rel="stylesheet" href="../styles/registerStudents.css?v=<?php echo time(); ?>">
   <link rel="stylesheet" href="../styles/header-footer.css?v=<?php echo time(); ?>">

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
               <h1><a href="studentProfile.php">Student Profile</a></h1>
       

      </div>

      <div class="title">
         <div>
            <h3>Register Students</h3>
            <h6>4p's Students of Caloocan High School</h6>
         </div>

      </div>

      <div class="admin-container">

         <h6 class="adminLogged">Admin : <span><?php echo $_SESSION['username']; ?></span></h6>

         <h2 class="logout">
            <a href="../logout.php">logout</a>
         </h2>

      </div>
   </section>

   <div class="registerContainer">

      <form action="" method="POST">

         <div class="studentInfo">

            <div class="mainInfo">
               <label for="lrn">LRN</label>
               <input type="text" name="lrn">

               <label for="name">Name</label>
               <input type="text" name="name">

               <label for="section">Section</label>
               <input type="text" name="section">
            </div>

            <div class="otherInfo">
               <label for="age">Age</label>
               <input type="" name="age">

               <label for="address">Address</label>
               <textarea name="address"></textarea>

               <label for="email">Email</label>
               <textarea name="email"></textarea>

               <label for="number">Number</label>
               <input type="text" name="number">
            </div>

         </div>


         <button type="submit" name="registerStudent">Register</button>

      </form>

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