<?php 
    session_start();
    require_once "databaseConnection.php";

    $monthYear = $_SESSION['monthYear'];

    
    // Filter the excel data 
function filterData(&$str){ 
    $str = preg_replace("/\t/", "\\t", $str); 
    $str = preg_replace("/\r?\n/", "\\n", $str); 
    if(strstr($str, '"')) $str = '"' . str_replace('"', '""', $str) . '"'; 
} 
 
// Excel file name for download 
$fileName = "student_attendance-$monthYear.xls"; 
 
// Column names 
$fields = array('lrn', 'student_name', 'section','school_days', 'present_total', 'absent_total', 'attendance_rate'); 
 
// Display column names as first row 
$excelData = implode("\t", array_values($fields)) . "\n"; 
 
// Fetch records from database 
$selectMonthSql = "SELECT * FROM $monthYear ORDER BY section ASC";
$initiateSelectMonthSql = mysqli_query(databaseConnection(),$selectMonthSql);

if($initiateSelectMonthSql->num_rows > 0){ 
    // Output each row of the data 
    while($row = $initiateSelectMonthSql->fetch_assoc()){ 
       
        $lineData = array($row['lrn'], $row['student_name'], $row['section'], $row['school_days'], $row['present_total'], $row['absent_total'], $row['attendance_rate']); 
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