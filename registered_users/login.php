<?php
header('Content-Type: application/json');

$host = "localhost";
$user = "root";
$password = "";
$database = "mydb";

$conn = new mysqli($host, $user, $password, $database);

if ($conn->connect_error) {
    die(json_encode(['error' => 'Connection failed: ' . $conn->connect_error]));
}

$username = $_POST['username'];
$password = $_POST['pass'];

// Log received data
error_log('Received Data: ' . json_encode($_POST));

$sql = "SELECT * FROM users WHERE username = '$username' AND pass = '$password'";
error_log('SQL Query: ' . $sql);

$result = $conn->query($sql);

$response = array();

if ($result->num_rows > 0) {
    $response['success'] = true;
    $response['message'] = "Login successful";
} else {
    $response['success'] = false;
    $response['message'] = "Login failed";
}

echo json_encode($response);


$conn->close();
?>
