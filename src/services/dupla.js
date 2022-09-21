const db = require('../configs/db')

const sql_getduplas = 'select dup_id, dup_nome from dupla WHERE dup_id <> 99'

const getduplas = async () => {
    result = await db.query(sql_getduplas)
    return {
        total: result.rows.length,
        duplas: result.rows
    }
}

module.exports.getduplas = getduplas