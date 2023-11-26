const rankController = require('../controllers/rank')

module.exports = (app, auth) => {
    app.get('/rank', auth, rankController.getRank
        //#region Documentação
        /*  #swagger.tags = ['RANK']
        */
        //#endregion
    )
}
