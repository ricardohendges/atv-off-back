const db = require('../configs/db')

const sql_getAtividades = 'select * from atividade'

const getAtividades = async () => {
    result = await db.query(sql_getAtividades)
    return {
        total: result.rows.length,
        atividades: result.rows
    }
}

module.exports.getAtividades = getAtividades