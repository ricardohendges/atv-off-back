const atividadeRoute = require('./atividade')
const duplaRoute = require('./dupla')
const validateJWT = require('./validateJWT')

module.exports = (app) => {
    atividadeRoute(app, validateJWT.verifyJWTAuth)
    duplaRoute(app, validateJWT.verifyJWTAuth)
}