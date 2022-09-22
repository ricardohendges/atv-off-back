const db = require('../configs/db')

const sql_getExemplo = 'select * from exemplo where atv_id = $1'

const getExemplo = async (params) => {
    result = await db.query(sql_getExemplo, [params.atv_id])
    return {
        total: result.rows.length,
        exemplo: result.rows
    }
}

module.exports.getExemplo = getExemplo