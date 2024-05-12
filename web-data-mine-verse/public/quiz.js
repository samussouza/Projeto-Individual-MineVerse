function validarRespostas() {
    var perguntas = document.querySelectorAll('.div-quiz');

    for (var validacao = 0; validacao < perguntas.length; validacao++) {
        /*verifica se tem pelo menos um input selecionda por div*/
        var inputs = perguntas[validacao].querySelectorAll('input[type="radio"]:checked');
        if (inputs.length == 0) {
            alert("Por favor, responda todas as perguntas antes de prosseguir.");
            return false;
        }
    }

    return true;
}
/*utilizei o metodo de argumento na funcao vinda do onclick*/
function perguntaAnterior(atual) {
    var perguntas = document.querySelectorAll('.div-quiz');

    for (var contador = 0; contador < perguntas.length; contador++) {
        if (contador === atual - 2) {
            perguntas[contador].style.display = 'block';
        } else {
            perguntas[contador].style.display = 'none';
        }
    }
}


function proximaPergunta(proxima) {
    var perguntas = document.querySelectorAll('.div-quiz');

    for (var contador = 0; contador < perguntas.length; contador++) {
        if (contador + 1 == proxima) {
            perguntas[contador].style.display = 'block';
        } else {
            perguntas[contador].style.display = 'none';
        }
    }

}


function enviarRespostas() {

    if (!validarRespostas()) {
        return;
    }
    /*Aqui eu chamo a função paraCronometro, que contém um clar
    pararCronometro();
    const tempoTotalHoras = horas;
    const tempoTotalMinutos = minutos;
    const tempoTotalSegundos = segundos;
    const tempoTotalFormatado = `${tempoTotalHoras}:${tempoTotalMinutos}:${tempoTotalSegundos}`;
    console.log("Tempo total:", tempoTotalFormatado);

    /*Obtem os valores selecionados, que serão enviados para o banco*/
    const resposta1 = document.querySelector('input[name="resposta1"]:checked').value;
    const resposta2 = document.querySelector('input[name="resposta2"]:checked').value;
    const resposta3 = document.querySelector('input[name="resposta3"]:checked').value;
    const resposta4 = document.querySelector('input[name="resposta4"]:checked').value;
    const resposta5 = document.querySelector('input[name="resposta5"]:checked').value;
    const resposta6 = document.querySelector('input[name="resposta6"]:checked').value;
    const resposta7 = document.querySelector('input[name="resposta7"]:checked').value;
    const resposta8 = document.querySelector('input[name="resposta8"]:checked').value;
    const resposta9 = document.querySelector('input[name="resposta9"]:checked').value;
    const resposta10 = document.querySelector('input[name="resposta10"]:checked').value;

    console.log(resposta1, resposta2, resposta3, resposta4, resposta5, resposta6, resposta7, resposta8, resposta9, resposta10)
    calcularKPIs()

    var emailUsuario = sessionStorage.EMAIL_USUARIO;
    console.log('Email do usuário:', emailUsuario);

    fetch("/quiz/cadastrarRespostas", {
        method: "POST",
        headers: {
            "Content-Type": "application/json",
        },
        body: JSON.stringify({
            resposta1Server: resposta1,
            resposta2Server: resposta2,
            resposta3Server: resposta3,
            resposta4Server: resposta4,
            resposta5Server: resposta5,
            resposta6Server: resposta6,
            resposta7Server: resposta7,
            resposta8Server: resposta8,
            resposta9Server: resposta9,
            resposta10Server: resposta10,
            tempoTotalServer: tempoTotal,
            emailUsuarioServer: emailUsuario
        }),
    })
        .then(function (resposta) {
            console.log("Resposta do servidor: ", resposta);

            if (resposta.ok) {
                alert("Respostas enviadas com sucesso!");
                calcularKPIs()
                let redirecionarDash = "./dashboard/dashboard.html";
                window.location.href = redirecionarDash;

            } else {
                throw "Houve um erro ao tentar realizar o cadastro!";
            }
        })
        .catch(function (erro) {
            console.log(`#ERRO: ${erro}`);
            alert("Ocorreu um erro ao enviar as respostas. Por favor, tente novamente mais tarde.");
        });
    return false;

}

function calcularKPIs() {

    let pontuacaoTotal = 0;
    let respostasCorretasPlayer = 0;

    /*For que intera um valor para cada pergunta*/
    for (let contador = 0; contador <= 9; contador++) {

        let resposta = document.querySelector('input[name="resposta' + (contador + 1) + '"]:checked');
        // Verificar se uma resposta foi selecionada e em seguida pega o valor
        if (resposta) {
            resposta = resposta.value;

            if (resposta == "1") {
                pontuacaoTotal += 10;
             respostasCorretasPlayer++;
            }
        }
    }
    let desacertos = 10 - respostasCorretasPlayer;
    let aproveitamento = (pontuacaoTotal / 100) * 100
    sessionStorage.DESACERTOS = desacertos;
    sessionStorage.APROVEITAMENTO = aproveitamento;
    sessionStorage.RESPOSTA_CORRETA = respostasCorretasPlayer;
    sessionStorage.PONTUACAO_TOTAL = pontuacaoTotal;

    console.log('Pontuação Total:' + pontuacaoTotal);
    console.log('Total de Acertos:' + respostasCorretasPlayer);

}

let segundos = 0;
let minutos = 0;
let horas = 0;
let intervalo;

/*função que atualiza o cronômetro a cada segundo*/
function atualizarCronometro() {
    segundos++;
    /*verifica se os segundos já atingiu um minuto*/
    if (segundos >= 60) {
        segundos = 0;
        minutos++;

          /*verifica se os minutos já atingiu um hora*/
        if (minutos >= 60) {
            minutos = 0;
            horas++;
        }
    }
    /*formata o tempo em hh:mm:ss*/
    const tempo = formatarNumero(horas) + ":" + formatarNumero(minutos) + ":" + formatarNumero(segundos);

    /*atualiza o elemento associado ao id*/
    document.getElementById("cronometro").innerText = tempo;
}

function iniciarCronometro() {
    intervalo = setInterval(atualizarCronometro, 1000);
}

function pararCronometro() {
    clearInterval(intervalo);
}

/*formata o número <10 com zero à esqueda*/
function formatarNumero(numero) {
    if (numero < 10) {
        return "0" + numero;
    }
    return numero;
}
