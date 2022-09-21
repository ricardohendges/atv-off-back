const loginController = require('../controllers/login')

module.exports = (app, auth) => {
    app.post('/login', loginController.loginDupla)
    app.get('/logout', loginController.doLogout)
    app.get('/user', auth, loginController.getUser)
}

