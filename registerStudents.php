<?php 
   session_start(); 
   require_once "databaseConnection.php";

   if (isset($_POST['registerStudent'])) {
      $studentLrn = $_POST['lrn'];
      $studentName = $_POST['name'];
      $studentSection = $_POST['section'];
      $studentAge = $_POST['age'];
      $studentAddress = $_POST['address'];
      $studentEmail = $_POST['email'];
      $studentNumber = $_POST['number'];

      $validationQuery = "SELECT * FROM students WHERE lrn = '$studentLrn'";
      $validationResult = mysqli_query(databaseConnection(), $validationQuery);
      $validationCount = mysqli_num_rows($validationResult);
      
         if ($validationCount) {
            echo '<script>alert("Student LRN :  ' . $studentLrn . ' already exist.")</script>';
         } else {
            $insertToDatabase = "INSERT INTO `students` (`lrn`, `name`, `section`, `age`, `address`, `email`, `contact_number`) VALUES ('$studentLrn', '$studentName', '$studentSection', '$studentAge', '$studentAddress', '$studentEmail', '$studentNumber')";

            $startInsertion = mysqli_query(databaseConnection(), $insertToDatabase);
            echo '<script>alert("Student Added.")</script>';
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

   <link rel="stylesheet" href="styles/registerStudents.css?v=<?php echo time(); ?>">

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
        <h3>Register Students</h3>

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
                    <input type="text" name="address">

                    <label for="email">Email</label>
                    <input type="text" name="email">

                    <label for="number">Number</label>
                    <input type="text" name="number">
                </div>

            </div>

            <div class="navigate">
               <h3><a href="gradeLevel.php">< Back</a></h3>
                <button type="submit" name="registerStudent">Register</button>
                <h3><a href="#">Student Profile > </a></h3>
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