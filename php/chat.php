<?php


include_once 'config.php';

$sql = mysqli_query($conn,  "SELECT * FROM chatmessage ORDER BY id ASC");
if(mysqli_num_rows($sql) > 0){
   while($data = mysqli_fetch_assoc($sql)){
    extract($data);

echo '

    <article>
    <span class="sendText" onclick="buscarResposta('.$id.')">'.$pergunta.'</span>
    </article>






';

   }
}
else{
    echo "Erro: mensagem não disponivel!";
}


?>