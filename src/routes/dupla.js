const duplaController = require('../controllers/dupla')

module.exports = (app, auth) => {
    app.get('/dupla', auth, duplaController.getduplas
        //#region Documentação
        /*  #swagger.tags = ['DUPLA']
        */
        //#endregion
    );
    app.patch('/dupla', duplaController.patchDuplas
        //#region Documentação
        /*  #swagger.tags = ['DUPLA']
        */
        //#endregion
    )
}