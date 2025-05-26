<?php 
    session_start();
    $_SESSION = [];
    $_SESSION ['message'] = "Je bent uitgelogd!";
    header ("Location:index.php");
?>