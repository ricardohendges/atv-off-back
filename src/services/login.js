const db = require('../configs/db')
const jwt = require('jsonwebtoken')

const sql_login = 'select id, nome from dupla where usuario = $1 and password = $2 '

const loginDupla = async (params) => {
    const {user, pass} = params
    result = await db.query(sql_login, [user.toUpperCase(), pass.toUpperCase()])
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