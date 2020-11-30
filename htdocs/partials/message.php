<?php

include './PDO/connection.php';
include './PDO/message.php';

// echo '<pre>' . var_export($_SERVER['REMOTE_ADDR'], true) . '</pre>';
?>
<?php foreach($messages as $message): ?>
  <div class="card message-container" id="message-container">
      <div class="card-body">
          <h5 class="card-title nickname"><?=$message["nickname"]?>
          <p class="card-text message-content"><?=$message["message"]?></p>
          <small class="dateTime"><?=$message["created_at"]?></small>
      </div>
  </div>
<?endforeach; ?>