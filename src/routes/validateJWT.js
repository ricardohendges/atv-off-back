const jwt = require('jsonwebtoken')

const verifyJWTAuth = (req, res, next) => {
    let token = req.cookies.auth
    if (!token) {
        return res.status(401).json({type: 'ERRO', message:'WITHOUT_TOKEN', detail: 'Sem token de autenticação' })
    }
    jwt.verify(token, process.env.CERT_AUTH, {algorithm: ['RS256']}, async (err, decoded) => {
        if (err) {
            return res.status(500).json({type: 'ERRO', message:'INVALID_TOKEN', detail: 'Token de autenticação invalido' })
        } else {
            req.body.perfilAcesso = decoded.perfilAcesso
            req.body.perfilAcesso.isADM = decoded.perfilAcesso.dup_id == 99
            next()
        }
    })
}

module.exports.verifyJWTAuth = verifyJWTAuth