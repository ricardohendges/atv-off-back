const duplasServices = require('../services/dupla')

const getduplas = async (req, res) => {
    duplasServices.getduplas()
        .then(ret => res.status(200).json(ret))
        .catch(err => res.status(500).json(err.message))
}

module.exports.getduplas = getduplas