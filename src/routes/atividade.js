const atividadeController = require('../controllers/atividade')

module.exports = (app, auth) => {
    app.get('/atividades', auth, atividadeController.getAtividades)
}
