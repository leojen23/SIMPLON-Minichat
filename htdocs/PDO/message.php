<?php

include 'connection.php';

// echo '<pre>' . var_export($_SERVER['REMOTE_ADDR'], true) . '</pre>';


// RETRIEVE MESSAGE DISPLAY CONTENT FROM DATA BASE START--------------------------------------------------


// retrieve all user info to display in message

$request = $db->query('SELECT users.id, users.nickname, messages.user_id, messages.message, messages.created_at
                         FROM users
                         INNER JOIN messages
                         ON users.id = messages.user_id
                         ORDER BY created_at DESC LIMIT 0,5')
                         ;

$messages = $request->fetchAll();


// retrieves user list of usernames for user display list

$userNicknamestatement = $db->query('SELECT nickname FROM users');
$userNicknamestatement->execute();
$userNicknames = $userNicknamestatement->fetchAll();





