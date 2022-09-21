const loginServices = require('../services/login')
const atob = require('atob')

const loginDupla = async (req, res) => {
    if (req.headers && req.headers.authorization && req.headers.authorization.indexOf('Basic') > -1) {
        const login = decodeURIComponent(escape(atob(req.headers.authorization.substr(req.headers.authorization.indexOf('Basic') + 6))))
        let posPonto = login.indexOf(':')
        loginServices.loginDupla({user: login.substr(0, posPonto), pass: login.substr(posPonto+1)})
            .then(ret => {
                res.cookie('auth', ret.token, {
                    sameSite: 'none',
                    secure: true,
                    expires: new Date(Date.now() + 1000 * 60 * 60 * 24 * 7)})
                res.status(201).json(ret)
            })
            .catch(err => res.status(500).json(err.message))
    } else {
        res.status(400).json({type: 'ERRO', message: 'LOGIN WITH BASIC AUTH!'})
    }
}

const getUser = async (req, res) => {
    res.status(201).json({id: req.body.id, nome: req.body.nome})
}

const doLogout = async (req, res) => {
    res.cookie('auth', '', {
        sameSite: 'none',
        secure: true,
        expires: new Date(Date.now() + 1000 * 60 * 60 * 24 * 7)})
    res.status(201).json({type: 'SUCCESS', message: 'LOGOUT SUCCESS'})
}

module.exports.doLogout = doLogout
module.exports.getUser = getUser
module.exports.loginDupla = loginDupla