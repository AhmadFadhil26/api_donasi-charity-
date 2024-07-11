<?php
include 'db.php';

header('Content-Type: application/json');

// Fetch donation history
$sql = "SELECT * FROM donations";
$result = $conn->query($sql);

$donations = [];
if ($result->num_rows > 0) {
    while($row = $result->fetch_assoc()) {
        $donations[] = $row;
    }
}

echo json_encode($donations);

$conn->close();
?>
