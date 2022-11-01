<?php
session_start();

$studentLrn = $_GET['ID'];

?>

<!DOCTYPE html>
<html lang="en">

<head>

    <link href="https://fonts.googleapis.com/css2?family=Poppins&family=Roboto+Mono&family=Tomorrow&display=swap" rel="stylesheet">

    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="stylesheet" href="styles/viewStudentRecord.css?v=<?php echo time(); ?>">
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
                    <h1><a href="studentProfile.php">Student Profile</a></h1>

        </div>

        <div class="title">
            <div>
                <h3>Student: <span><?php echo $studentLrn; ?></span></h3>
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

    <div class="record-container">

        <form action="">

            <div>
                <div class="studentInfo">
                    <label for="lrn">lrn</label>
                    <input type="text" name="lrn" value="">

                    <label for="name">Name</label>
                    <input type="text" name="name" value="">

                    <label for="section">Section</label>
                    <input type="text" name="section" value="">
                </div>

                <div class="studentRecord">

                    <div class="div01">
                        <label>1</label>
                        <input type="text" name="day1" value="">

                        <label>2</label>
                        <input type="text" name="day2" value="">

                        <label>3</label>
                        <input type="text" name="day3" value="">

                        <label>4</label>
                        <input type="text" name="day4" value="">

                        <label>5</label>
                        <input type="text" name="day5" value="">

                        <label>6</label>
                        <input type="text" name="day6" value="">

                        <label>7</label>
                        <input type="text" name="day7" value="">

                        <label>8</label>
                        <input type="text" name="day8" value="">

                        <label>9</label>
                        <input type="text" name="day9" value="">

                        <label>10</label>
                        <input type="text" name="day10" value="">
                    </div>

                    <div class="02">
                        <label>11</label>
                        <input type="text" name="day11" value="">

                        <label>12</label>
                        <input type="text" name="day12" value="">

                        <label>13</label>
                        <input type="text" name="day13" value="">

                        <label>14</label>
                        <input type="text" name="day14" value="">

                        <label>15</label>
                        <input type="text" name="day15" value="">

                        <label>16</label>
                        <input type="text" name="day16" value="">

                        <label>17</label>
                        <input type="text" name="day17" value="">

                        <label>18</label>
                        <input type="text" name="day18" value="">

                        <label>19</label>
                        <input type="text" name="day19" value="">

                        <label>20</label>
                        <input type="text" name="day20" value="">
                    </div>

                    <div class="03">
                        <label>21</label>
                        <input type="text" name="day21" value="">

                        <label>22</label>
                        <input type="text" name="day22" value="">

                        <label>23</label>
                        <input type="text" name="day23" value="">

                        <label>24</label>
                        <input type="text" name="day24" value="">

                        <label>25</label>
                        <input type="text" name="day25" value="">

                        <label>26</label>
                        <input type="text" name="day26" value="">

                        <label>27</label>
                        <input type="text" name="day27" value="">

                        <label>28</label>
                        <input type="text" name="day28" value="">

                        <label>29</label>
                        <input type="text" name="day29" value="">

                        <label>30</label>
                        <input type="text" name="day30" value="">

                        <label>31</label>
                        <input type="text" name="day31" value="">
                    </div>
                </div>
            </div>

            <button type="submit">Save</button>
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