const exemplosController = require('../controllers/exemplos')

module.exports = (app, auth) => {
    app.get('/exemplos/:atv_id', auth, exemplosController.getExemplo)
}
