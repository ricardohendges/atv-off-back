const jwt = require('jsonwebtoken')

const verifyJWTAuth = (req, res, next) => {
    let token = req.cookies.auth
    if (!token) {
        return res.status(401).json({type: 'API', message:'WITHOUT_TOKEN', detail: '' })
    }
    jwt.verify(token, process.env.CERT_AUTH, {algorithm: ['RS256']}, async (err, decoded) => {
        if (err) {
            return res.status(500).json({type: 'API', message:'INVALID_TOKEN', detail: '' })
        } else {
            req.body = decoded.perfilAcesso
            next()
        }
    })
}

module.exports.verifyJWTAuth = verifyJWTAuth