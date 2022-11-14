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
            <h1><a href="../studentProfile/studentProfile.php">
                    Student Profile</a></h1>
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

    <section class="main">

        <div class="gradeLevel-container">
            <div class="grade11">
                <h1><a href="admin_dashboard-grade11year2022.php">GRADE 11</a></h1>
            </div>

            <div class="grade12">
                <h1><a href="#">GRADE 12</a></h1>
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