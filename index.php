<?php
   require_once "databaseConnection.php";

   if (isset($_POST['goLog'])) {
      $adminUsername = $_POST['username'];
      $adminPassword = $_POST['password'];

      $usernameRS = mysqli_real_escape_string(databaseConnection(), $adminUsername);
      $passwordRS = mysqli_real_escape_string(databaseConnection(), $adminPassword);
      
      $selectAdminSql = "SELECT * FROM admin WHERE username = '$usernameRS' ";
      $initiateSelectSql = mysqli_query(databaseConnection(), $selectAdminSql) or die;
      $adminTableNumRows = mysqli_num_rows($initiateSelectSql);
      $adminTableRows = mysqli_fetch_assoc($initiateSelectSql);

      if ($adminTableNumRows > 0) {
         
         // while ($adminTableRows = mysqli_fetch_assoc($initiateSelectSql)) {

            if (password_verify($passwordRS, $adminTableRows['password'])) {
            session_start();
            $_SESSION['username'] = $adminTableRows['username'];
            header('Location:/Sams/adminDashboard/admin_dashboard-gradeLevel.php');
            } else {
               echo "<script>alert('Invalid Password!');</script>";
            }

       //  }   

      } else {
         echo '<script>alert("Invalid username and password")</script>';
      }
   }
?>

<!DOCTYPE html>
   <html lang="en">

   <head>
      <link href="https://fonts.googleapis.com/css2?family=Poppins&family=Roboto+Mono&family=Tomorrow&display=swap" rel="stylesheet">

      <link rel="stylesheet" href="styles/index.css?v=<?php echo time(); ?>">
      <link rel="stylesheet" href="styles/header-footer.css?v=<?php echo time(); ?>">

      <meta charset="UTF-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">

      <title>Log-In | Attendance Monitoring System</title>
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

      <div class="login-container">

         <section class="loginFormContainer">

            <form method="post">
               <h3>Log-in here</h3>

               <label for="Username">Username</label>
                  <input type="username" placeholder="Username..." id="username" name="username">

               <label for="Password">Password</label>
                  <input type="password" placeholder="Password..." id="password" name="password">

               <button type="submit" class="button-LogIn" name="goLog">Log-In</button>
               
               <!-- <h6>Not a member? <a href="signup.php">Sign-Up Now</a></h6> -->

            </form>
         </section>
         
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