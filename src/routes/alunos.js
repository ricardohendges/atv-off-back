const alunosController = require('../controllers/alunos')

module.exports = (app) => {
    app.get('/alunos', alunosController.getAlunos)
    app.post('/alunos', alunosController.postAlunos)
}
