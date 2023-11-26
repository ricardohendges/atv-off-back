const cursoController = require('../controllers/curso')

module.exports = (app, auth) => {
    app.get('/curso', auth, cursoController.getCurso
        //#region Documentação
        /*  #swagger.tags = ['CURSO']
            #swagger.responses[201] = { description: 'Sucesso!',
                schema: {
                    "total": 1,
                    "curso": [
                        {
                            "cur_id": 1,
                            "cur_nome": "Sistemas de Informação"
                        }
                    ]
                }
            }
            #swagger.responses[401] = { description: 'Obrigatório estar autenticado!' }
            #swagger.responses[403] = { description: 'Perfil de acesso inválido' }
            #swagger.responses[500] = { description: 'Problema no servidor.' }
        */
        //#endregion
    )
}
