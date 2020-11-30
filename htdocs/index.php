<?php
session_start();
include './PDO/connection.php';
include './PDO/store.php';

// echo '<pre>' . var_export($data, true) . '</pre>';
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mini Chat</title>

    <!-- Boostrap CDN -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    
    <!-- CUSTOM CSS -->
    <link rel="stylesheet" href="./CSS/style.css">
    
</head>


<body>

<!-- chat container start --------------------------------------------------------->
    <div class=" container-chat">

        <main class="chatroom">
             <nav class="navbar navbar-light bg-light">
                <span class="navbar-brand mb-0 h1">CHAT ROOM</span>
            </nav>

<!-- message section start ------------------------ -->

            <section class="msg-display">
                <div class="msg-content">
                    <?php include 'partials/message.php'?>
                </div>
            </section>

<!-- message section start --------------------------------------------------------->
            <form action="./PDO/store.php" method="POST" class="form-input">
                <div class="form-group">
                    <input 
                    type="text" 
                    class="form-control" 
                    id="nickname" 
                    name='nickname'
                    placeholder="Username"
                    value="<?= $nickname?>">
                </div>
                
                <div class="form-group">
                    <textarea class="form-control" id="textarea" rows="2" name="message" placeholder="Type you message here"></textarea>
                </div>
                <button type="submit" class="btn btn-sm btn-secondary">Send</button>
            </form>

        </main>

<!-- sidebar start --------------------------------------------------------->
        <aside class="sidebar">
            <nav class="navbar bg-light">
                <span class="navbar-brand mb-0 h1">MEMBERS</span>
            </nav>
            <div><?= include './partials/nickname.php'?></div>
        </aside>

    </div>
    <!-- <script>console.log('hello')</script> -->
    


    <script
  src="https://code.jquery.com/jquery-3.5.1.min.js"
  integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0="
  crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
<script src="../JS/script.js"></script>

</body>
</html>