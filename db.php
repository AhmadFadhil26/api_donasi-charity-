<?php
$servername = "localhost";
$username = "mobw7774_fadhil";
$password = "fadhil@123";
$dbname = "mobw7774_api_fadhil"; 

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

function insertDonation($type, $description, $quantity, $pickupAddress, $amount) {
    global $conn;
    $sql = "INSERT INTO donations (type, description, quantity, pickup_address, amount)
            VALUES ('$type', '$description', $quantity, '$pickupAddress', $amount)";

    if ($conn->query($sql) === TRUE) {
        return true;
    } else {
        return false;
    }
}

?>
