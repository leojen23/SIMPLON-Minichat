
// const JSONmessages = ('./PDO/get_messages.php');
// console.log(JSONmessages);

function getMessages(){
    // retrieves JSON DATA FROM PHP PAGE
    fetch('../PDO/get_messages.php')

    // check the response and converts it in json data
        .then(response => {
            if(response.status == 200){
                return response.json();  
            }else{
                console.log('request error');
            }
        })
        .then(function(messages){
            console.log(messages);
            messages.forEach(message.createElement(''))
        })        
    }
getMessages();


// function recursive qui rafraichit les messages sans rafraichier la page
// function refreshMessages(){
//     $.get('PDO/get_messages.php', function (messagesHtml) {
//             document.querySelector('#message-container').innerHTML = messagesHtml;
//             setTimeout(refreshMessages,3000);
//             console.log("messages rafraichis");
//     })
// }

// $(function (){
//     refreshMessages();
// });
    
