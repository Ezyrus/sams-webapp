<?php
    require_once "databaseConnection.php";
    $conn  = databaseConnection();
    if(isset($_FILES['files'])){
      $filename = $_FILES['files']['tmp_name'];
      $file = fopen($filename, "r");
      $count = 0;
      while($studentData = fgetcsv($file,10000 , ",")){
        if($count > 0){

          echo "<pre>"; print_r($studentData);
            // $lrn = $stud_data[0];
            // $name = $stud_data[1];
            // $section = $stud_data[2];
            // $age = $stud_data[3];
            // $number = $stud_data[4];
            // $email = $stud_data[5];
            // $address = $stud_data[6];
            // $query = "INSERT INTO students (lrn, name, age, email, address, section, contact_number) VALUES ('$lrn', '$name',   '$age','$email', '$address','$section', '$number'  )";

            // $result = mysqli_query($conn, $query);
        }

        $count++;
      }
    }

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
        <form method="POST" enctype="multipart/form-data">
                <input type="file" name="files">
                <input  type="submit">
        </form>
</body>
</html>
