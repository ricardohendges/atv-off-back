const duplasServices = require('../services/dupla')
const atob = require('atob')

const getduplas = async (req, res) => {
    try {
        const rows = await duplasServices.getduplas()
        res.status(200).json(rows)
    } catch (err) {
        res.status(500).json(err.message)
    }
}
const loginDupla = async (req, res) => {
    if (req.headers && req.headers.authorization && req.headers.authorization.indexOf('Basic') > -1) {
        const login = decodeURIComponent(escape(atob(req.headers.authorization.substr(req.headers.authorization.indexOf('Basic') + 6))))
        let posPonto = login.indexOf(':')
        duplasServices.loginDupla({user: login.substr(0, posPonto), pass: login.substr(posPonto+1)})
            .then(ret => {
                res.cookie('auth', ret.token, {httpOnly: true, expires: new Date(Date.now() + 1000 * 60 * 60 * 24 * 7)}) 
                res.status(201).json(ret)
            })
            .catch(err => res.status(500).json(err.message))
    } else {
        res.status(400).json('LOGIN WITH BASIC AUTH!')
    }
}

module.exports.loginDupla = loginDupla
module.exports.getduplas = getduplas