<?php
$conn = new mysqli('localhost', 'root', '', 'zssn');
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 
?>