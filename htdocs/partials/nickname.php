<!-- DOM for nickname display -->
<?php foreach($userNicknames as $userNickname): ?>
    <div class="card-body display-nickname">
        <p class="card-title nickname"><?=$userNickname["nickname"]?></p>
     </div>
<?endforeach; ?>


