const exemplosController = require('../controllers/exemplos')

module.exports = (app, auth) => {
    app.get('/exemplos/:atv_id', auth, exemplosController.getExemplo
        //#region Documentação
        /*  #swagger.tags = ['EXEMPLO']
        */
        //#endregion
    )
    app.post('/exemplos/:atv_id', auth, exemplosController.postExemplo
        //#region Documentação
        /*  #swagger.tags = ['EXEMPLO']
        */
        //#endregion
    )
}
