const db = require('../configs/db')

const sql_getAlunos = 'select * from ALUNOS'

const getAlunos = async () => {
    result = await db.query(sql_getAlunos)
    return {
        total: result.rows.length,
        alunos: result.rows
    }
}

const sql_postAlunos = 'insert into alunos (id, nome, sobrenome) values ($1, $2, $3)'

const postAlunos = async (params) => {
    const { id, nome, sobrenome } = params
    return await db.query(sql_postAlunos, [id, nome, sobrenome])
    // return {
    //     total: result.rows.length,
    //     alunos: result.rows
    // }
}

module.exports.getAlunos = getAlunos
module.exports.postAlunos = postAlunos