var database = require("../database/config");
var database = require("../database/config");


function cadastrarRespostas(quest1, quest2, quest3, quest4, quest5, quest6, quest7, quest8, quest9, quest10) {

    var instrucaoSql = `
            INSERT INTO quiz_resultado (quest1, quest2, quest3, quest4, quest5, quest6, quest7, quest8, quest9, quest10, data_hora)
            VALUES ('${quest1}', '${quest2}', '${quest3}', '${quest4}', '${quest5}', '${quest6}', '${quest7}', '${quest8}', '${quest9}', '${quest10}', NOW());
        `;
    console.log("Executando a instrução SQL de atualização do resultado do quiz: \n" + instrucaoSql);

    return database.executar(instrucaoSql);

}

module.exports = {
    cadastrarRespostas
};

