<?php 
include("dbcon.php");

if (isset($_POST['sendmessage'])){
    $name = $_POST['name'];
    $email = $_POST['email'];
    $phone = $_POST['phone'];
    $message = $_POST['message'];

    $query = $pdo->prepare("INSERT INTO `form`(`name`, `email`, `phone`, `message`) VALUES(:fn , :fe , :fp , :fm)");
    $query->bindParam("fn",$name);
    $query->bindParam("fe",$email);
    $query->bindParam("fp",$phone);
    $query->bindParam("fm", $message);
    $query->execute();
    echo "<script>alert('From has been Successfully Submit');
    location.assign(customerdashboard.php)</script>";
}
?>