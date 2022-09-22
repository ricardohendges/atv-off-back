const atividadeRoute = require('./atividade')
const duplaRoute = require('./dupla')
const loginRoute = require('./login')
const submissaoRoute = require('./submissao')
const rankRoute = require('./rank')
const exemploRoute = require('./exemplos')
const validateJWT = require('./validateJWT')

module.exports = (app) => {
    atividadeRoute(app, validateJWT.verifyJWTAuth)
    duplaRoute(app, validateJWT.verifyJWTAuth)
    loginRoute(app, validateJWT.verifyJWTAuth)
    submissaoRoute(app, validateJWT.verifyJWTAuth)
    rankRoute(app, validateJWT.verifyJWTAuth)
    exemploRoute(app, validateJWT.verifyJWTAuth)
}