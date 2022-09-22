const duplasServices = require('../services/dupla')

const getduplas = async (req, res) => {
    duplasServices.getduplas()
        .then(ret => res.status(200).json(ret))
        .catch(err => res.status(500).json(err.message))
}

const patchDuplas = async (req, res) => {
    const { oldPass, newPass, confirmNew, User } = req.body
    if (oldPass, newPass, confirmNew, User) {
        if (newPass == confirmNew)
            duplasServices.patchduplas(req.body)
                .then(ret => res.status(200).json(ret))
                .catch(err => res.status(500).json(err.message))
        else 
            res.status(400).json({type: 'ERRO', message: 'Senhas novas não batem!'})    
    } else {
        res.status(400).json({type: 'ERRO', message: 'Informe oldPass, newPass, confirmNew e User.'})
    }
}

module.exports.patchDuplas = patchDuplas
module.exports.getduplas = getduplas