<?php 
   session_start(); 
   require_once "databaseConnection.php";

   $searchResult = $_GET['search'];

    $searchResultSql = "SELECT * FROM students WHERE lrn LIKE  '%$searchResult%' || name LIKE  '%$searchResult%'";

    $searchRowResult = databaseConnection()->query($searchResultSql) or die (databaseConnection()->error);

    $searchRow = $searchRowResult->fetch_assoc();

?>

<!DOCTYPE html>
<html lang="en">

<head>

   <link href="https://fonts.googleapis.com/css2?family=Poppins&family=Roboto+Mono&family=Tomorrow&display=swap" rel="stylesheet">

   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">

   <link rel="stylesheet" href="styles/searchStudent.css?v=<?php echo time(); ?>">

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

    <div class="studentProfile">
        <div class="profileContainer">
            <h3 class="title">Student Profile</h3>

            <div class="navigate">

                <h3><a href="studentProfile.php">< Back</a></h3>

                <form action="" method="get">
                    <input type="text" name="search" namespace="Search by student ... ">

                    <button type="submit">Search</button>
                </form>

                <h3><a href="registerStudents.php">Register Students</a></h3>

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

                <?php do{ ?>
                    <tr>
                        <td class="lrn"><?php echo $searchRow['lrn']; ?></td>
                        <td class="name"><?php echo $searchRow['name']; ?></td>
                        <td class="section"><?php echo $searchRow['section']; ?></td>
                        <td class="age"><?php echo $searchRow['age']; ?></td>
                        <td class="address"><?php echo $searchRow['address']; ?></td>
                        <td class="email"><?php echo $searchRow['email']; ?></td>
                        <td class="number"><?php echo $searchRow['contact_number']; ?></td>
                        <td class="function">
                                <a href="updateStudents.php?ID=<?php echo $searchRow['lrn']; ?>">UPDATE</a>
                                <a href="deleteStudent.php?ID=<?php echo $searchRow['lrn']; ?>">DELETE</a></td>
                    </tr>
                <?php } while($searchRow =  $searchRowResult->fetch_assoc())?>

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