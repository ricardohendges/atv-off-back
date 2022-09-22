const db = require('../configs/db')

const sql_getduplas = 'select dup_id, dup_nome, dup_first_access, dup_password from dupla WHERE dup_id <> 99'

const getduplas = async () => {
    result = await db.query(sql_getduplas)
    return {
        total: result.rows.length,
        duplas: result.rows
    }
}

const sql_updateDupla = 
`update dupla set dup_password = $1, dup_first_access = '0'  where dup_usuario = $2 and dup_password = $3`

const patchduplas = async (param) => {
    const { oldPass, newPass, User } = param
    return await db.query(sql_updateDupla, [newPass, User.toUpperCase(), oldPass])
}
    
module.exports.patchduplas = patchduplas
module.exports.getduplas = getduplas