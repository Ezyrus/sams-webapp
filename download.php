<?php 
    session_start();
    require_once "databaseConnection.php";

    // Filter the excel data 
function filterData(&$str){ 
    $str = preg_replace("/\t/", "\\t", $str); 
    $str = preg_replace("/\r?\n/", "\\n", $str); 
    if(strstr($str, '"')) $str = '"' . str_replace('"', '""', $str) . '"'; 
} 
 
// Excel file name for download 
$fileName = "student_attendance.xls"; 
 
// Column names 
$fields = array('lrn', 'student_name', 'section', '1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12', '13', '14', '15', '16', '17','18', '19', '20', '21', '22', '23', '24', '25', '26', '27', '28', '29', '30', '31', 'school_days', 'present_total', 'absent_total', 'attendance_rate'); 
 
// Display column names as first row 
$excelData = implode("\t", array_values($fields)) . "\n"; 
 
// Fetch records from database 
$query = databaseConnection()->query("SELECT * FROM october2022 ORDER BY section ASC"); 

if($query->num_rows > 0){ 
    // Output each row of the data 
    while($row = $query->fetch_assoc()){ 
       
        $lineData = array($row['lrn'], $row['student_name'], $row['section'], $row['1'], $row['2'], $row['3'], $row['4'], $row['5'], $row['6'], $row['7'], $row['8'], $row['9'], $row['10'], $row['11'], $row['12'], $row['13'], $row['14'], $row['15'], $row['16'], $row['17'],$row['18'], $row['19'], $row['20'], $row['21'], $row['22'], $row['23'], $row['24'], $row['25'], $row['26'], $row['27'], $row['28'], $row['29'], $row['30'], $row['31'], $row['school_days'], $row['present_total'], $row['absent_total'], $row['attendance_rate']); 
        array_walk($lineData, 'filterData'); 
        $excelData .= implode("\t", array_values($lineData)) . "\n"; 
    } 
}else{ 
    $excelData .= 'No records found...'. "\n"; 
} 
 
// Headers for download 
header("Content-Type: application/vnd.ms-excel"); 
header("Content-Disposition: attachment; filename=\"$fileName\""); 
 
// Render excel data 
echo $excelData; 
 
exit;

?>