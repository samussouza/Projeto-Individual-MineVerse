var quizModel = require("../models/quizModel");


function cadastrarRespostas(req, res) {
    // Crie uma variável que vá recuperar os valores do arquivo quiz.html
    var quest1 = req.body.resposta1Server;
    var quest2 = req.body.resposta2Server;
    var quest3 = req.body.resposta3Server;

    // Faça as validações dos valores


    
    quizModel.cadastrarRespostas(quest1, quest2, quest3).then(
        function (resultado) {
            res.json(resultado);
        }
    ).catch(
        function (erro) {
            console.log(erro);
            console.log(
                "\nHouve um erro ao realizar o cadastro das respostas! Erro: ",
                erro.sqlMessage
            );
            res.status(500).json(erro.sqlMessage);
        }
    );
}


module.exports = {
    cadastrarRespostas
}