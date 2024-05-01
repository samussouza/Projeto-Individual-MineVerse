var database = require("../database/config");



function cadastrarRespostas(idUsuario, quest1, quest2, quest3) {
;

            var instrucaoSql = `
                INSERT INTO quiz_resultado (fk_user, quest1, quest2, quest3, data_hora)
                VALUES (${idUsuario}, '${quest1}', '${quest2}', '${quest3}', NOW());
            `;

            // Execute a instrução SQL e retorne a Promise resultante
            return database.executar(instrucaoSql);

}

module.exports = {
    cadastrarRespostas
};
