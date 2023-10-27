setInterval(() => {
  let xml = new XMLHttpRequest();
  xml.open("POST", "php/chat.php",true);
  xml.onload = ()=>{
    if(xml.readyState === 4 && xml.status === 200){
        let data = xml.response;
        let chatArea = document.querySelector(".chatArea");
        chatArea.innerHTML = data;
    }
  }
  xml.send();
  xml.onerror = ()=>{
    console.error(data);
  }
}, 5000);

function buscarResposta(resposta){
    let xhl = new XMLHttpRequest();
    xhl.open("POST", "php/resposta.php", true);
    xhl.onload = () => {
        if (xhl.readyState === 4 && xhl.status === 200) {
            var resposta = xhl.response;
            var dataResponseUser = document.querySelector(".dataResponseUser");
            dataResponseUser.classList.add('actived');
            dataResponseUser.innerHTML = resposta;
        }
    }
    xhl.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
    xhl.send("resposta=" + resposta);
}
