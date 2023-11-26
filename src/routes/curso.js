const cursoController = require('../controllers/curso')

module.exports = (app, auth) => {
    app.get('/curso', auth, cursoController.getCurso
        //#region Documentação
        /*  #swagger.tags = ['CURSO']
            #swagger.summary = 'Consulta lista de Cursos'
            #swagger.responses[200] = { description: 'Sucesso!',
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
    app.post('/curso', auth, cursoController.postCurso
        //#region Documentação
        /*  #swagger.tags = ['CURSO']
            #swagger.summary = 'Insere novo curso'
            #swagger.parameters['json'] = {
                in: 'body',
                description: 'Dados para inserir curso',
                type: 'json',
                schema: {
                    nome: "Administração"
                }
            }
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
