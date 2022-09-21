const submissaoController = require('../controllers/submissao')

module.exports = (app, auth) => {
    app.get('/submissao', auth, submissaoController.getSubmissao)
    app.get('/submissao/:user', auth, submissaoController.getSubmissao)
    app.post('/submissao', auth, submissaoController.postSubmissao)
    app.patch('/submissao', auth, submissaoController.patchSubmissao)
}