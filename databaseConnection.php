<?php
function databaseConnection() {
$dbHost = 'localhost';
$dbName = 'samsdb';
$dbUsername = 'root';
$dbPassword = ''; 
$connection = mysqli_connect($dbHost,$dbUsername,$dbPassword,$dbName);
return $connection;
}
?>


