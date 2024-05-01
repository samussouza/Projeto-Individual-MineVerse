var database = require("../database/config");


function cadastrarRespostas(quest1, quest2, quest3, quest4, quest5, quest6, quest7, quest8, quest9, quest10) {
    console.log("ACESSEI O USUARIO MODEL \n \n\t\t >> Se aqui der erro de 'Error: connect ECONNREFUSED',\n \t\t >> verifique suas credenciais de acesso ao banco\n \t\t >> e se o servidor de seu BD está rodando corretamente. \n\n function entrar(): ", quest1, quest2, quest3);


    var instrucaoSql = `
                INSERT INTO quiz_resultado (quest1, quest2, quest3, quest4, quest5, quest6, quest7, quest8, quest9, quest10, data_hora)
                VALUES ('${quest1}', '${quest2}', '${quest3}', '${quest4}', '${quest5}', '${quest6}', '${quest7}', '${quest8}', '${quest9}', '${quest10}', NOW());
            `;
    console.log("Executando a instrução SQL de inserção: \n" + instrucaoSql);
    return database.executar(instrucaoSql);

}

module.exports = {
    cadastrarRespostas
};
