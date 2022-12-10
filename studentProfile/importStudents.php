<?php 
    session_start();
    require_once "../databaseConnection.php";

    if (isset($_FILES['import-csv'])) {
        $fileName = $_FILES['import-csv']['tmp_name'];
        $openFile = fopen($fileName, "r");

        $count = 0;
        while($studentData = fgetcsv($openFile,10000 , ",")){
            if($count > 0){

                echo "<pre>"; print_r($studentData);
                $lrn = $studentData[0];
                $name = $studentData[1];
                $section = $studentData[2];
                $age = $studentData[3];
                $address = $studentData[4];
                $email = $studentData[5];
                $number = $studentData[6];

                $insertStudentSql = "INSERT INTO students (lrn, name, age, email, address, section, contact_number) VALUES ('$lrn', '$name',   '$age','$email', '$address','$section', '$number'  )";

                mysqli_query(databaseConnection(), $insertStudentSql);

                echo header("Location: studentProfile.php");
            }
    
            $count++;
          }

    }
    die;
?>