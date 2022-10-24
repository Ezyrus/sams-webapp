<?php 
   session_start(); 
   require_once "databaseConnection.php";

   $updateLrn = $_GET['ID'];
   $studentRowSql = "SELECT * FROM students WHERE lrn = '$updateLrn'";
   $studentRowResult = databaseConnection()->query($studentRowSql) or die (databaseConnection()->error);
   $studentRow = $studentRowResult->fetch_assoc();
  


   if (isset($_POST['registerStudent'])) {
      $studentLrn = $_POST['lrn'];
      $studentName = $_POST['name'];
      $studentSection = $_POST['section'];
      $studentAge = $_POST['age'];
      $studentAddress = $_POST['address'];
      $studentEmail = $_POST['email'];
      $studentNumber = $_POST['number'];

      $validationQuery = "UPDATE `students` SET `lrn`='$studentLrn',`name`='$studentName',`section`='$studentSection',`age`='$studentAge',`address`='$studentAddress',`email`='$studentEmail',`contact_number`='$studentNumber' WHERE `lrn`='$studentLrn'";
      
      databaseConnection()->query($validationQuery) or die (databaseConnection()->error);
   
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

   <link rel="stylesheet" href="styles/updateStudents.css?v=<?php echo time(); ?>">

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

    <div class="registerContainer">
        
        <form action="" method="POST">
         <h3>Update Students</h3>

               <div class="studentInfo">
                  
                  <div class="mainInfo">
                     <label for="lrn">LRN</label>
                     <input type="text" name="lrn" value="<?php echo $studentRow['lrn']; ?>">

                     <label for="name">Name</label>
                     <input type="text" name="name" value="<?php echo $studentRow['name']; ?>">

                     <label for="section">Section</label>
                     <input type="text" name="section" value="<?php echo $studentRow['section']; ?>">
                  </div>

                  <div class="otherInfo">
                     <label for="age">Age</label>
                     <input type="" name="age" value="<?php echo $studentRow['age']; ?>">

                     <label for="address">Address</label>
                     <input type="text" name="address" value="<?php echo $studentRow['address']; ?>">

                     <label for="email">Email</label>
                     <input type="text" name="email" value="<?php echo $studentRow['email']; ?>">

                     <label for="number">Number</label>
                     <input type="text" name="number" value="<?php echo $studentRow['contact_number']; ?>">
                  </div>

               </div>

               <div class="navigate">
                  <h3><a href="studentProfile.php">< Back</a></h3>
                  <button type="submit" name="registerStudent">Update</button>
                  <h3><a href="studentProfile.php">Student Profile > </a></h3>
            </div>
        </form>
        
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