<?php
session_start();
$con = mysqli_connect("localhost", "root", "", "autoclinic");

if (isset($_POST['adsub'])) {
    $username = $_POST['username1'];
    $password = $_POST['password2'];
    $query = "SELECT * FROM admintb WHERE username='$username' AND password='$password';";
    $result = mysqli_query($con, $query);
    if (mysqli_num_rows($result) == 1) {
        $_SESSION['username'] = $username;
        header("Location: admin-panel1.php");
    } else {
        // Redirect to error page or show an alert
        echo("<script>alert('Invalid Username or Password. Try Again!');
              window.location.href = 'index.php';</script>");
    }
}

function display_docs() {
    global $con;
    $query = "SELECT * FROM doctb";
    $result = mysqli_query($con, $query);
    while ($row = mysqli_fetch_array($result)) {
        $name = $row['name'];
        echo '<option value="' . $name . '">' . $name . '</option>';
    }
}

if (isset($_POST['doc_sub'])) {
    $name = $_POST['name'];
    $query = "INSERT INTO doctb(name) VALUES ('$name')";
    $result = mysqli_query($con, $query);
    if ($result) {
        header("Location: adddoc.php");
    }
}
?>
