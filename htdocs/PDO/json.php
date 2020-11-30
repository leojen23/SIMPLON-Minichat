<?php
include 'connection.php';

// retrieves messages en user info
$request = $db->query('SELECT users.id, users.nickname, messages.user_id, messages.message, messages.created_at
                         FROM users
                         INNER JOIN messages
                         ON users.id = messages.user_id
                         ORDER BY created_at DESC LIMIT 0,5')
                         ;
$messages = $request->fetchAll();


// convert PHP messages into JSON file
$JSONmessages = json_encode($messages, JSON_PRETTY_PRINT | JSON_UNESCAPED_UNICODE | JSON_UNESCAPED_SLASHES);

// echo '<pre>' . var_export($JSONmessages, true) . '</pre>';

