const db = require('../configs/db')

const sql_getCurso = ' select * from t_curso '

const getCurso = async () => {
    result = await db.query(sql_getCurso, [])
    return {
        total: result.rows.length,
        curso: result.rows
    }
}
const sql_postCurso = ' insert into t_curso (cur_nome) values ($1) returning cur_id '

const postCurso = async (params) => {
    result = await db.query(sql_postCurso, [params.nome])
    return {
        curso: {
            cur_id: result.rows[0].cur_id,
            cur_nome: params.nome
        }
    }
}

module.exports.getCurso = getCurso
module.exports.postCurso = postCurso