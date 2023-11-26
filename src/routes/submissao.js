const submissaoController = require('../controllers/submissao')

module.exports = (app, auth) => {
    app.get('/submissao', auth, submissaoController.getSubmissao
        //#region Documentação
        /*  #swagger.tags = ['SUBMISSAO']
        */
        //#endregion
    )
    app.get('/submissao/:user', auth, submissaoController.getSubmissao
        //#region Documentação
        /*  #swagger.tags = ['SUBMISSAO']
        */
        //#endregion
    )
    app.post('/submissao', auth, submissaoController.postSubmissao
        //#region Documentação
        /*  #swagger.tags = ['SUBMISSAO']
        */
        //#endregion    
    )
    app.patch('/submissao', auth, submissaoController.patchSubmissao
        //#region Documentação
        /*  #swagger.tags = ['SUBMISSAO']
        */
        //#endregion
    )
}