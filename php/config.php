<?php
$dbhost = "localhost";
$dbusername = "root";
$dbpassword = "";
$dbname = "chatbot";

$conn = mysqli_connect($dbhost,$dbusername,$dbpassword,$dbname);
if($conn == true){
  return true;
}
else{
    $erro = mysqli_connect_error();
    return $erro;
}
?>