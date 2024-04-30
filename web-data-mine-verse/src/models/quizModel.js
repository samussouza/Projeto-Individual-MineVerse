var database = require("../database/config");
var sql = require("./usuarioModel");

function cadastrarRespostas(quest1, quest2, quest3) {
    return sql.instrucaoSql2()
        .then(userId => {
            var instrucao = `
                INSERT INTO quiz_resultado (fk_user, quest1, quest2, quest3) VALUES ('${userId}', '${quest1}', '${quest2}', '${quest3}');
            `;

            console.log("Executando a instrução SQL: \n" + instrucao);

            return database.executar(instrucao);
        })
        .catch(error => {
            console.error("Erro ao cadastrar as respostas:", error);
            throw error;
        });
}

module.exports = {
    cadastrarRespostas
};
