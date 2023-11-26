const atividadeController = require('../controllers/atividade')

module.exports = (app, auth) => {
    app.get('/atividades', auth, atividadeController.getAtividades
        //#region Documentação
        /*  #swagger.tags = ['ATIVIDADE']
            #swagger.summary = 'Grava serviço para um protocolo'
            #swagger.parameters['json'] = {
                    in: 'body',
                    description: 'Dados para realizar o serviço',
                    type: 'json',
                    schema: {
                        acao: 1,
                        protocolo: 249839,
                        observacao: 'string'
                    }
                }
            #swagger.responses[201] = { description: 'Operação realizada com sucesso.' }
            #swagger.responses[400] = { description: 'Bad request',
                schema: {
                type: 'API',
                message:'MISSING_BODY_FIELDS',
                detail: 'Os campos acao e protocolo são obrigatórios'
                }
            }
            #swagger.responses[404] = { description: 'Motivo não encontrado!' }
            #swagger.responses[500] = { description: 'Problema no servidor.' }
        */
        //#endregion
    )
}
