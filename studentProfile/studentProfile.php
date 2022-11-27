<?php
session_start();
require_once "../databaseConnection.php";

$messageUpdate = $_SESSION['messageUpdate'];

$selectStudentSql = "SELECT * FROM students";
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
        </div>

        <div class="admin-container">

            <h6 class="adminLogged">Admin : <span><?php echo $_SESSION['username']; ?></span></h6>

            <h2 class="logout">
                <a href="../logout.php">logout</a>
            </h2>

        </div>
    </section>

    <div class="studentProfile">

        <div class="profileContainer">

            <div class="search-container">

                <h3><a href="registerStudents.php">Register Students here</a>
                </h3>

                <form action="searchStudent.php" method="get">
                    <input type="text" name="search">
                    <button type="submit" class="search"><img src="../assets/search.png" alt="search"></button>
                </form>

                <h3 id="log">Log: <span><?php
                                        if ($messageUpdate == "") {
                                            echo "...";
                                        } else {
                                            echo "$messageUpdate";
                                        }
                                        ?></span>
                </h3>
            </div>

            <div class="studentRecords">
                <table>

                    <tr>
                        <th class="lrn">LRN</th>
                        <th class="name">Full Name</th>
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
                                    <a href="updateStudents.php?ID=<?php echo $studentRow['lrn']; ?>" class="update">
                                        <img src="../assets/editt.png" alt="UPDATE" srcset="">
                                    </a>
                                    <a class="delete" onclick="openDeletePopup(<?php echo $studentRow['lrn'];  ?>)">
                                        <img src="../assets/delete.png" alt="UPDATE">
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
    </div>

    <div class="deletePopup" id="deletePopup">

        <div class="deleteStud">
            <img class="delete" src="../assets/godelete.png" alt="delete">
            <h1>Delete Student</h1>
        </div>

        <div class="studInfo">
            <h3>Deleting a student will permanently remove its information and record throughout the system.</h3>
            <h6>Are you sure?</h6>

            <div class="btn">
                <button class="no" id="no" type="button" onclick="falseDeletePopup()">No, Keep Student</button>
                <button class="yes" id="yes" type="button">Yes, Delete Student</button>
            </div>
        </div>
    </div>

    <script src="../js/popups.js"></script>

</body>

</html>