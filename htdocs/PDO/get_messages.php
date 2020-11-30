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


foreach($messages as $message): ?>
    <div class="card message-container" id="message-container">
        <div class="card-body">
            <h5 class="card-title nickname"><?=$message["nickname"]?>
            <p class="card-text message-content"><?=$message["message"]?></p>
            <small class="dateTime"><?=$message["created_at"]?></small>
        </div>
    </div>
<?endforeach; ?>










