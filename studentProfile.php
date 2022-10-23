<?php 
   session_start(); 
   require_once "databaseConnection.php";
?>

<!DOCTYPE html>
<html lang="en">

<head>

   <link href="https://fonts.googleapis.com/css2?family=Poppins&family=Roboto+Mono&family=Tomorrow&display=swap" rel="stylesheet">

   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">

   <link rel="stylesheet" href="styles/studentProfile.css?v=<?php echo time(); ?>">

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
        <div>
            <h3>Student Profile</h3>

            <form action="" method="get">
                <input type="text" name="search" namespace="Search by student ... ">
                <button type="submit">Search</button>
            </form>

            <table>
                <tr>
                    <th>lrn</th>
                    <th>name</th>
                    <th>section</th>
                    <th>age</th>
                    <th>address</th>
                    <th>email</th>
                    <th>number</th>
                    <th>update</th>
                </tr>

                <tr>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
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