const atividadeController = require('../controllers/atividade')

module.exports = (app, auth) => {
    app.get('/atividades', auth, atividadeController.getAtividades
        //#region GET /atividades
        /*  #swagger.tags = ['ATIVIDADE']
            #swagger.summary = 'Consulta lista de atividades'
            #swagger.responses[200] = { description: 'Operação realizada com sucesso.' }
            #swagger.responses[500] = { description: 'Problema no servidor.' }
        */
        //#endregion
    )
    app.post('/atividades', auth, atividadeController.postAtividades
        //#region Documentação
        /*  #swagger.tags = ['ATIVIDADE']
            #swagger.summary = 'Insere nova atividade'
            #swagger.responses[200] = { description: 'Operação realizada com sucesso.' }
            #swagger.responses[500] = { description: 'Problema no servidor.' }
        */
        //#endregion
    )
}
