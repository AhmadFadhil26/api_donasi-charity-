<?php
include 'db.php';

header('Content-Type: application/json');

// Query to select the first 3 donation types
$sql = "SELECT * FROM donation_types LIMIT 3";
$result = $conn->query($sql);

$donation_types = [];
if ($result->num_rows > 0) {
    while($row = $result->fetch_assoc()) {
        $donation_types[] = $row;
    }
}

echo json_encode($donation_types);

$conn->close();
?>
