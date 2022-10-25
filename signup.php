<?php
    session_start(); 
    require_once "databaseConnection.php";

    if (isset($_POST['goSignUp'])) {

        if (!empty($_POST['username']) && !empty($_POST['password'])) {

            $username = $_POST['username'];
            $password = $_POST['password'];
            
            $validationQuery = "SELECT * FROM admin WHERE username = '$username'";
            $validationResult = mysqli_query(databaseConnection(), $validationQuery);
            $validationCount = mysqli_num_rows($validationResult);

            if ($validationCount) {
                echo '<script>alert("Username ' . $username . ' already exist, please choose another.")</script>';
            } else {
                $username = $_POST['username'];
                $password = $_POST['password'];

                $insertToDatabase = "INSERT INTO admin (username,password) VALUES ('$username','$password')";

                $startInsertion = mysqli_query(databaseConnection(), $insertToDatabase);
                echo '<script>alert("New Administrator has been successfully Registered")</script>';
            }
        } else {
            echo '<script>alert("All field are required!")</script>';
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

    <link rel="stylesheet" href="styles/signup.css?v=<?php echo time(); ?>">

    <title>Sign-Up | Attendance Monitoring System</title>

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

    <div class="signup-container">
        
        <section class="someInformation">

        </section>

        <section class="signupFormContainer">

            <form action="" method="post">
                <h3>Create New Account</h3>
                <label for="Username">Username</label>

                <input type="username" placeholder="New username..." id="username" name="username">

                <label for="Password">Password</label>

                <input type="password" placeholder="New password..." id="password" name="password">

                <button type="submit" class="button-signUp" name="goSignUp">Sign-Up</button>

                <h6>Already a member? <a href="index.php">Log-In here</a></h6>
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