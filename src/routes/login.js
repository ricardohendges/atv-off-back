const loginController = require('../controllers/login')

module.exports = (app, auth) => {
    app.post('/login', loginController.loginDupla
        //#region Documentação
        /*  #swagger.tags = ['AUTH']
        */
        //#endregion
    )
    app.get('/logout', loginController.doLogout
        //#region Documentação
        /*  #swagger.tags = ['AUTH']
        */
        //#endregion
    )
    app.get('/user', auth, loginController.getUser
        //#region Documentação
        /*  #swagger.tags = ['AUTH']
        */
        //#endregion
    )
}