<?php
session_start();

$adminLogged = $_SESSION['username'];
if ($adminLogged == "") {
   header('Location:/Sams/index.php');
}

require_once "../databaseConnection.php";

$updateLrn = htmlentities($_GET['ID']);
$_SESSION['messageUpdate'] = "$updateLrn has been updated";
$selectStudentSql = "SELECT * FROM students WHERE lrn = '$updateLrn'";

$initiateSelectSql = mysqli_query(databaseConnection(), $selectStudentSql);

$studentRow = mysqli_fetch_assoc($initiateSelectSql);


if (isset($_POST['registerStudent'])) {
   $studentLrn = $_POST['lrn'];
   $studentName = $_POST['name'];
   $studentSection = $_POST['section'];
   $studentAge = $_POST['age'];
   $studentAddress = $_POST['address'];
   $studentEmail = $_POST['email'];
   $studentNumber = $_POST['number'];

   $updateStudentSql = "UPDATE `students` SET `lrn`='$studentLrn',`name`='$studentName',`section`='$studentSection',`age`='$studentAge',`address`='$studentAddress',`email`='$studentEmail',`contact_number`='$studentNumber' WHERE `lrn`='$studentLrn'";

   mysqli_query(databaseConnection(), $updateStudentSql);

   echo header("Location: studentProfile.php?ID=" . $studentLrn);
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
         <h1 onclick="history.go(-1);">
            < BACK</h1>
      </div>

      <div class="title">
         <h3><a href="#">Update Student</a></h3>
         <img src="../assets/edit.png" alt="edit">
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
               <label for="lrn">LRN:</label>
               <h6 class="required">Required (Ex. : 136612345678, Max. 12)</h6>
               <input type="text" name="lrn" value="<?php echo $studentRow['lrn']; ?>">

               <label for="name">Name:</label>
               <h6 class="required">Required (Format: Lastname, Firstname, Middle Name)</h6>
               <input type="text" name="name" value="<?php echo $studentRow['name']; ?>">

               <label for="section">Section:</label>
               <h6 class="required">Required (Ex. : ABM 11-A, HUMMS 12-A)</h6>
               <input type="text" name="section" value="<?php echo $studentRow['section']; ?>">

               <div>
                  <label for="age">Age:</label>
                  <input type="number" name="age" value="<?php echo $studentRow['age']; ?>">

                  <label for="number">Number:</label>
                  <input type="number" name="number" value="<?php echo $studentRow['contact_number']; ?>">
               </div>

            </div>

            <div class="otherInfo">

               <label for="Email">Email Address:</label>
               <h6 class="required">Required (Ex. : student@yahoo.com, student@gmail.com)</h6>
               <textarea type="text" name="email"><?php echo $studentRow['email']; ?></textarea>

               <label for="address">Full Address:</label>
               <h6 class="required">Required (Format : Street Number/Name, Barangay, City/Municipality)</h6>
               <textarea type="text" name="address"><?php echo $studentRow['address']; ?></textarea>

            </div>

         </div>

         <button type="submit" name="registerStudent"> <img src="../assets/doneee.png" alt="done">Done
         </button>

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