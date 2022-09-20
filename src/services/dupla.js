const db = require('../configs/db')
const jwt = require('jsonwebtoken')

const sql_getduplas = 'select id, nome from dupla'

const getduplas = async () => {
    result = await db.query(sql_getduplas)
    return {
        total: result.rows.length,
        duplas: result.rows
    }
}

const loginDupla = async (params) => {
    let sql = sql_getduplas
    sql += ' where usuario = $1 and password = $2'
    const {user, pass} = params
    result = await db.query(sql, [user, pass])
    if (!result.rows.length) throw new Error("USUÁRIO OU SENHA INVÁLIDOS!")
    else {
        let perfilAcesso = result.rows[0]
        let token = jwt.sign({perfilAcesso}, process.env.PRIVATE_AUTH, {algorithm: 'RS256', expiresIn: '7d' })
        return {
            total: result.rows.length,
            duplas: result.rows,
            token: token
        }
    }
}

module.exports.loginDupla = loginDupla
module.exports.getduplas = getduplas