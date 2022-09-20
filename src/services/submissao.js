const db = require('../configs/db')

const sql_postAlunos = 'insert into alunos (id, nome, sobrenome) values ($1, $2, $3)'

const postAlunos = async (params) => {
    const { id, nome, sobrenome } = params
    return await db.query(sql_postAlunos, [id, nome, sobrenome])
}

module.exports.postAlunos = postAlunos