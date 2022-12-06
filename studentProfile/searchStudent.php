<?php
session_start();

$adminLogged = $_SESSION['username'];
if ($adminLogged == "") {
    header('Location:/Sams/index.php');
}

error_reporting(0);  //hide errors
require_once "../databaseConnection.php";

$searchResult = htmlentities($_GET['search']);

$selectStudentSql = "SELECT * FROM students WHERE lrn LIKE  '%$searchResult%' || name LIKE  '%$searchResult%'  || section LIKE  '%$searchResult%' ORDER BY section ";

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

    <link rel="stylesheet" href="../styles/viewAddSearchStudentProfile.css?v=<?php echo time(); ?>">
    <link rel="stylesheet" href="../styles/header-footer.css?v=<?php echo time(); ?>">
    <link rel="stylesheet" href="../styles/popups.css?v=<?php echo time(); ?>">

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
            <h1><a href="../adminDashboard/admin_dashboard-gradeLevel.php">portal</a></h1>
        </div>

        <div class="title">
            <h3><a href="studentProfile.php">Student Profile</a></h3>
            <img src="../assets/users.png">
        </div>

        <div class="admin-container">

            <h6 class="adminLogged">Admin : <span><?php echo $_SESSION['username']; ?></span></h6>

            <h2 class="logout">
                <a href="../logout.php">logout</a>
            </h2>

        </div>
    </section>

    <section class="studentProfile">

        <div class="profileContainer">

            <div class="search-container">

                <div>
                    <h3><a href="registerStudents.php">Register Student</a>
                    </h3>
                    <img src="../assets/registerr.png">
                </div>

                <form action="searchStudent.php" method="get">
                    <input type="text" name="search">
                    <button type="submit"><img src="../assets/search.png"></button>
                </form>

                <div>
                    <h3><a href="../archive/studentArchives.php">Archive</a></h3>
                    <img src="../assets/archive.png">
                </div>
            </div>

            <div class="studentRecords">
                <table>

                    <tr>
                        <th class="lrn">LRN</th>
                        <th class="name">Name</th>
                        <th class="section">Section</th>
                        <th class="age">Age</th>
                        <th class="address">Address</th>
                        <th class="email">Email</th>
                        <th class="number">Number</th>
                    </tr>

                    <?php do {
                        if ($studentRow == 0) {
                            echo "   <td class='noData' colspan = '7'>
                     No data to display here, please register students ...
                     </td>";
                        } else {
                    ?>

                            <tr>
                                <td class="lrn">
                                    <a href="updateStudents.php?ID=<?php echo $studentRow['lrn']; ?>">
                                        <img src="../assets/edit.png">
                                    </a>

                                    <a onclick="openProfileDeletePopup('<?php echo $studentRow['lrn'];  ?>')">
                                        <img src="../assets/delete.png">
                                    </a>

                                    <?php
                                    echo $studentRow['lrn'];
                                    ?>
                                </td>
                                <td class="name"><?php echo $studentRow['name']; ?></td>
                                <td class="section"><?php echo $studentRow['section']; ?></td>
                                <td class="age"><?php echo $studentRow['age']; ?></td>
                                <td class="address"><?php echo $studentRow['address']; ?></td>
                                <td class="email"><?php echo $studentRow['email']; ?></td>
                                <td class="number"><?php echo $studentRow['contact_number']; ?></td>
                            </tr>

                    <?php
                        }
                    } while ($studentRow = mysqli_fetch_assoc($initiateSelectSql)) ?>

                </table>
            </div>

        </div>
    </section>

    <div class="deletePopup" id="deletePopup">

        <div class="deleteStud">
            <img class="delete" src="../assets/godelete.png" alt="delete">
            <h1>Delete Student</h1>
        </div>

        <div class="studInfo">
            <h3>Are you sure you want to delete this student's registration? All it's information will be moved to archived.</h3>
            <h6>Continue?</h6>

            <div class="btn">
                <button class="no" id="noDel" type="button">No</button>
                <button class="yes" id="yesDel" type="button">Yes</button>
            </div>
        </div>
    </div>

    <script src="../js/popups.js?v=<?php echo time(); ?>"></script>

</body>

</html>