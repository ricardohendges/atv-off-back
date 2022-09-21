const db = require('../configs/db')

const sql_getduplas = 'select id, nome from dupla'

const getduplas = async () => {
    result = await db.query(sql_getduplas)
    return {
        total: result.rows.length,
        duplas: result.rows
    }
}

module.exports.getduplas = getduplas