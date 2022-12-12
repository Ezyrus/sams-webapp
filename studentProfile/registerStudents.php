<?php
session_start();

$adminLogged = $_SESSION['username'];
if ($adminLogged == "") {
   header('Location:/Sams/index.php');
}

require_once "../databaseConnection.php";

if (isset($_POST['registerStudent'])) {
   $studentLrn = htmlentities($_POST['lrn']);
   $studentName = htmlentities($_POST['name']);
   $studentSection = htmlentities($_POST['section']);
   $studentAge = htmlentities($_POST['age']);
   $studentAddress = htmlentities($_POST['address']);
   $studentEmail = htmlentities($_POST['email']);
   $studentNumber = htmlentities($_POST['number']);

   $selectStudentSql = "SELECT * FROM students WHERE lrn = '$studentLrn'";

   $initiateSelectSql = mysqli_query(databaseConnection(), $selectStudentSql);

   $studentTableNumRows = mysqli_num_rows($initiateSelectSql);

   if ($studentTableNumRows) {
      echo '<script>alert("Student LRN :  ' . $studentLrn . ' already exist")</script>';
   } else {
      if (empty($studentLrn) || empty($studentName) || empty($studentSection) || empty($studentAddress) || empty($studentEmail) || strlen($studentLrn) != 12) {
         echo '<script>alert("Please fix all errors to continue..."); 
         window.location.href ="registerStudents.php";
         </script>';
      } else {
         $insertToDatabase = "INSERT INTO `students` (`lrn`, `name`, `section`, `age`, `address`, `email`, `contact_number`) VALUES ('$studentLrn', '$studentName', '$studentSection', '$studentAge', '$studentAddress', '$studentEmail', '$studentNumber')";

         $startInsertion = mysqli_query(databaseConnection(), $insertToDatabase);

         $_SESSION['messageUpdate'] = "$studentLrn has been registered";

         echo '<script>alert("Student has been registered")
            window.location.href ="studentProfile.php";
         </script>';
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

   <link rel="stylesheet" href="../styles/registerUpdateStudents.css?v=<?php echo time(); ?>">
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
         <h1><a href="../studentProfile/studentProfile.php">
               Student Profile</a></h1>
      </div>

      <div class="title">
         <h3><a href="registerStudents.php">Register Students</a></h3>
         <img src="../assets/registerr.png" alt="register" class="register">
      </div>

      <div class="admin-container">

         <h6 class="adminLogged">Admin : <span><?php echo $_SESSION['username']; ?></span></h6>

         <h2 class="logout">
            <a href="../logout.php">logout</a>
         </h2>

      </div>
   </section>

   <div class="registerContainer">

      <div class="indivInput">

         <form method="POST">

            <div class="studentInfo">

               <div class="mainInfo">

                  <label for="lrn" id="nameLabel">LRN:
                     <div class="error-container">
                        <h6 class="required" id="lrn-error"></h6>
                        <span id="lrnErrorIcon"></span>
                     </div>
                  </label>
                  <input type="number" name="lrn" id="lrn" onkeyup="validateLrn()" required autofocus>

                  <label for="name">Name:
                     <div class="error-container">
                        <h6 class="required" id="name-error"></h6>
                        <span id="nameErrorIcon"></span>
                     </div>
                  </label>
                  <input type="text" name="name" id="name" onkeyup="validateName()" required>

                  <label for="section">Section:
                     <div class="error-container">
                        <h6 class="required" id="section-error"></h6>
                        <span id="sectionErrorIcon"></span>
                     </div>
                  </label>
                  <input type="text" name="section" id="section" onkeyup="validateSection()" required>

                  <div class="additionalInfo">
                     <div>
                        <label for="age">Age:</label>
                        <input type="number" name="age">
                     </div>

                     <div>
                        <label for="number">Number:</label>
                        <input type="number" name="number">
                     </div>
                  </div>
               </div>

               <div class="otherInfo">
                  <label for="Email">Email Address:
                     <div class="error-container">
                        <h6 class="required" id="email-error"></h6>
                        <span id="emailErrorIcon"></span>
                     </div>
                  </label>
                  <textarea name="email" id="email" onkeyup="validateEmail()" required></textarea>

                  <label for="address">Full Address:
                     <div class="error-container">
                        <h6 class="required" id="address-error"></h6>
                        <span id="addressErrorIcon"></span>
                     </div>
                  </label>
                  <textarea name="address" id="address" onkeyup="validateAddress()" required></textarea>

               </div>

            </div>

            <button type="submit" name="registerStudent"><img src="../assets/doneee.png" alt="done">Done
            </button>

         </form>

      </div>

      <div class="batchInput">
         <form action="importStudents.php" method="POST" enctype="multipart/form-data">

            <label for="import-csv">Import batch students</label>
            <input type="file" name="import-csv" required>

            <button type="submit"><img src="../assets/doneee.png" alt="done">Submit</button>

         </form>
      </div>

   </div>

   <script src="../js/registerUpdateValidation.js?v=<?php echo time(); ?>"></script>
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