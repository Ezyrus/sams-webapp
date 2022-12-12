<?php
session_start();
require_once "../databaseConnection.php";

if (isset($_FILES['import-csv'])) {
    $fileName = $_FILES['import-csv']['tmp_name'];
    $openFile = fopen($fileName, "r");

    $fileNameExtension = $_FILES['import-csv']['name'];
    $fileExtension = strtolower(pathinfo($fileNameExtension, PATHINFO_EXTENSION));
    $allowedExtension = array('csv');

    if (in_array($fileExtension, $allowedExtension)) {
        $count = 0;
        while ($studentData = fgetcsv($openFile, 10000, ",")) {
            if ($count > 0) {

                // echo "<pre>"; print_r($studentData);
                if ($studentData[0] != null && $studentData[1] != null && $studentData[2] != null && $studentData[4] != null && $studentData[5] != null) {
                    
                    $lrn = $studentData[0];
                    $name = $studentData[1];
                    $section = $studentData[2];
                    $age = $studentData[3];
                    $address = $studentData[4];
                    $email = $studentData[5];
                    $number = $studentData[6];
    
                    $insertStudentSql = "INSERT INTO students (lrn, name, age, email, address, section, contact_number) VALUES ('$lrn', '$name', '$age', '$email', '$address','$section', '$number'  )";
    
                    mysqli_query(databaseConnection(), $insertStudentSql);
                }                 
            }
            $count++;
        }
        echo '<script>alert("Students Successfully Imported");
        window.location.href ="studentProfile.php";
            </script>'; 
    } else {
        echo '<script>alert("System only accepts CSV file types to continue ..."); 
        window.location.href ="registerStudents.php";
        </script>';
    }
}
die;
