const db = require('../configs/db')
const jwt = require('jsonwebtoken')

const sql_login = 'select dup_id, dup_nome, dup_first_access from dupla where dup_usuario = $1 and dup_password = $2 '

const loginDupla = async (params) => {
    const {user, pass} = params
    result = await db.query(sql_login, [user, pass])
    let dtInicio = new Date(process.env.INICIO_TORNEIO)
    dtInicio.setHours(dtInicio.getHours() + 3)
    let dtAtual = new Date()
    if (!result.rows.length) throw new Error("USUÁRIO OU SENHA INVÁLIDOS!")
    else if (result.rows[0].dup_first_access) throw {status: 300, message: "PRIMEIRO ACESSO!!!"}
    else if (dtAtual < dtInicio) 
        throw {
            status: 400, 
            type: 'WARN', 
            message: `Inicio da Maratona: ${dtInicio.toLocaleString()}.`, 
            detail: 'Aguarde mais alguns instantes e boa sorte pequeno gafanhoto!'}
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