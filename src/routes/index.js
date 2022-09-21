const atividadeRoute = require('./atividade')
const duplaRoute = require('./dupla')
const loginRoute = require('./login')
const validateJWT = require('./validateJWT')

module.exports = (app) => {
    atividadeRoute(app, validateJWT.verifyJWTAuth)
    duplaRoute(app, validateJWT.verifyJWTAuth)
    loginRoute(app, validateJWT.verifyJWTAuth)
}