<?php
session_start();

$adminLogged = $_SESSION['username'];
if ($adminLogged == "") {
   header('Location:/Sams/index.php');
}

require_once "../databaseConnection.php";

$studentSelectSql = "SELECT * FROM students";
$initiateSelectSql = mysqli_query(databaseConnection(), $studentSelectSql);
$studentRow = mysqli_fetch_assoc($initiateSelectSql);

$messageUpdate = $_SESSION['messageUpdate'];

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
            <h1><a href="../studentProfile/studentProfile.php">student profile</a></h1>
        </div>

        <div class="title">
            <h3><a href="addStudents.php">add student</a></h3>
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

                <div>
                    <h3><a href="../studentProfile/registerStudents.php">Register Student</a>
                    </h3>
                    <img class="register" src="../assets/registerr.png" alt="register">
                </div>

                <form action="addStudent_searchStudent.php" method="get">
                    <input type="text" name="search">
                    <button type="submit" class="search"><img src="../assets/search.png" alt="search"></button>
                </form>

                <div>
                    <h3><a href="archive/studentArchives.php">Archive</a></h3>
                    <img class="archive " src="../assets/archive.png" alt="archive">
                </div>
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
                            echo "   <td class='noData' colspan = '8'>
                     No data to display here, please register students ...
                     </td>";
                        } else {
                    ?>
                            <tr>
                                <td class="lrn"><a href="studentAdded.php?ID=<?php echo $studentRow['lrn']; ?>" class="add">
                                        <img src="../assets/add.png" alt="add"></a><?php echo $studentRow['lrn']; ?></td>
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

</body>

</html>