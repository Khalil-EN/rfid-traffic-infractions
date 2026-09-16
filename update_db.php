<?php
session_start();
require 'connection.php';
require 'functions.php'; 

$user_data = check_login($con);



if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $csrfToken = $_POST['csrf_token'] ?? '';
    if (!validateCsrfToken($csrfToken)) {
        die('Invalid CSRF token');
    }

    $id = $user_data['id'];
    $email = $_POST['email'];
    $phonenumber = $_POST['phonenumber'];
    $password = $_POST['password'];
    $rfidtag = $_POST['rfidtag'];

    $payment_success = true;

    if ($payment_success) {
        $update_query = "UPDATE users2 SET rfidtag = ?, email = ?, phonenumber = ?, password = ? WHERE id = ?";
        $stmt = mysqli_prepare($con, $update_query);

        if ($stmt) {
            mysqli_stmt_bind_param($stmt, 'ssssi', $rfidtag, $email, $phonenumber, $password, $id);

            mysqli_stmt_execute($stmt);

            if (mysqli_stmt_errno($stmt)) {
                echo "Error updating record: " . mysqli_stmt_error($stmt);
            } else {
                header('Location: index.php');
                exit;
            }

            mysqli_stmt_close($stmt);
        } else {
            echo "Error preparing the statement: " . mysqli_error($con);
        }
    }

    mysqli_close($con);
}
?>

