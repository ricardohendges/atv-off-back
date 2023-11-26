const db = require('../configs/db')

const sql_getCurso = ' select * from t_curso '

const getCurso = async () => {
    result = await db.query(sql_getCurso, [])
    return {
        total: result.rows.length,
        curso: result.rows
    }
}

module.exports.getCurso = getCurso