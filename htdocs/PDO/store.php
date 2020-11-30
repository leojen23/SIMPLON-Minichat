<?php
include 'connection.php';
// echo  '<pre>' . var_export($_SERVER['HTTP_HOST'], true) . '</pre>';


// SEND INPUT DATE TO DATABASE START -------------------------------------------------------------------------------------

// Check data fields are filled


$nickname ='';
if(!empty($_COOKIE['nickname'])){
    $nickname = $_COOKIE['nickname'];
}

if(!empty($_POST["nickname"]) AND !empty($_POST["message"])){

    // print_r($_COOKIE["nickname"]);

    $nickname = htmlspecialchars ($_POST["nickname"]);
    $message = htmlspecialchars ($_POST["message"]);
    $userIp = $_SERVER['REMOTE_ADDR'];
  
    // setting cookies

    setcookie('nickname', $nickname, time() + 365 * 24 * 3600, "/");
    

    // Retrieves info from user to check user existence in users table

    $request = $db->prepare('SELECT * FROM users WHERE nickname =?');
    $request->execute([$nickname]);
    $user= $request->fetch();
   

    // checks if users already exists

    if(!empty($user)){
        $color ="black";
        $insertIntoMessagesTable = $db->prepare('INSERT INTO messages (user_id, message, ip_address, color, created_at) VALUES (?, ?, ?, ?, NOW())');
        $insertIntoMessagesTable->execute([intval($user['id']), $message, $userIp, $color]);
    }
    else
    {
        $insertIntoUsersTable = $db->prepare('INSERT INTO users (nickname, created_at, ip_address) VALUES (?, NOW(),?)');
        $insertIntoUsersTable->execute([$nickname, $userIp]);

            
    // retrieves user ID base on Userinput
        $request = $db->prepare('SELECT id FROM users WHERE nickname = ?');
        $request->execute([$nickname]);
        $userId = $request->fetch();
      

    // Insert userdata into messages table
        $color ="black";
        $insertIntoMessagesTable = $db->prepare('INSERT INTO messages (user_id, message, ip_address, color, created_at) VALUES (?, ?, ?, ?, NOW())');
        $insertIntoMessagesTable->execute([intval($userId['id']), $message, $userIp, $color]);
    }

    header('location:../index.php');
}

// SEND INPUT DATE TO DATABASE END -------------------------------------------------------------------------------------


?>
