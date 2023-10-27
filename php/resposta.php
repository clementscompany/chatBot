<?php
include_once 'config.php';
$dataResponse = mysqli_real_escape_string($conn, $_POST['resposta']);

$sql = mysqli_query($conn, "SELECT resposta FROM chatmessage WHERE id = '{$dataResponse}'");

while($data = mysqli_fetch_assoc($sql)){
    extract($data);

    echo '
    
    <article>
    <span class="responseTest">'.$resposta.'</span>
    </article>
    
    ';
}
die();

?>