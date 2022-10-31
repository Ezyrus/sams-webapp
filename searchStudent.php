<?php
session_start();
require_once "databaseConnection.php";

$searchResult = $_GET['search'];

$selectStudentSql = "SELECT * FROM students WHERE lrn LIKE  '%$searchResult%' || name LIKE  '%$searchResult%'";

$initiateSelectSql = mysqli_query(databaseConnection(), $selectStudentSql);

$studentRow = mysqli_fetch_assoc($initiateSelectSql);

?>

<!DOCTYPE html>
<html lang="en">

<head>

    <link href="https://fonts.googleapis.com/css2?family=Poppins&family=Roboto+Mono&family=Tomorrow&display=swap" rel="stylesheet">

    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="stylesheet" href="styles/studentProfile.css?v=<?php echo time(); ?>">
    <link rel="stylesheet" href="styles/header-footer.css?v=<?php echo time(); ?>">

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

    <section class="nav">

        <div class="back-container">

            <h1 onclick="history.go(-1);">
                < BACK</h1>

                    <h1><a href="registerStudents.php">Register Students</a></h1>

        </div>

        <div class="title">
            <div>
                <h3>Student Profile</h3>
                <h6>4p's Students of Caloocan High School</h6>
            </div>

        </div>

        <div class="admin-container">

            <h6 class="adminLogged">Admin : <span><?php echo $_SESSION['username']; ?></span></h6>

            <h2 class="logout">
                <a href="logout.php">logout</a>
            </h2>



        </div>
    </section>


    <div class="studentProfile">
        <div class="profileContainer">
            <div class="search-container">

                <form action="searchStudent.php" method="get">
                    <input type="text" name="search">
                    <button type="submit">Search</button>
                </form>

            </div>

            <table>
                <tr>
                    <th class="lrn">LRN</th>
                    <th class="name">Full Name</th>
                    <th class="section">Section</th>
                    <th class="age">Age</th>
                    <th class="address">Address</th>
                    <th class="email">Email</th>
                    <th class="number">Number</th>
                    <th class="function">Function</th>
                </tr>

                <?php do { ?>
                    <tr>
                        <td class="lrn"><?php echo $studentRow['lrn']; ?></td>
                        <td class="name"><?php echo $studentRow['name']; ?></td>
                        <td class="section"><?php echo $studentRow['section']; ?></td>
                        <td class="age"><?php echo $studentRow['age']; ?></td>
                        <td class="address"><?php echo $studentRow['address']; ?></td>
                        <td class="email"><?php echo $studentRow['email']; ?></td>
                        <td class="number"><?php echo $studentRow['contact_number']; ?></td>
                        <td class="function">
                            <a href="updateStudents.php?ID=<?php echo $studentRow['lrn']; ?>">UPDATE</a>
                            <a href="deleteStudent.php?ID=<?php echo $studentRow['lrn']; ?>">DELETE</a>
                        </td>
                    </tr>
                <?php } while ($studentRow = mysqli_fetch_assoc($initiateSelectSql)) ?>

            </table>
        </div>
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