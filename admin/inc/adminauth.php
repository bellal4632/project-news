<?php
if (session_status() === PHP_SESSION_NONE) {
    session_start();
}
// echo $_SESSION['role'];
// exit;
if(isset($_SESSION['loggedin']) && $_SESSION['loggedin'] && $_SESSION['role'] == "1"){

}
elseif(isset($_SESSION['loggedin']) && $_SESSION['loggedin'] && $_SESSION['role'] == "2"){

}
elseif(isset($_SESSION['loggedin']) && $_SESSION['loggedin'] && $_SESSION['role'] == "3"){

}
else{
    header("location: ../home/index.php");
}
?>