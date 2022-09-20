const duplaController = require('../controllers/dupla')

module.exports = (app, auth) => {
    app.get('/dupla', auth, duplaController.getduplas)
    app.post('/login', duplaController.loginDupla)
}