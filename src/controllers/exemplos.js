const exemploServices = require('../services/exemplos')

const getExemplo = async (req, res) => {
    exemploServices.getExemplo(req.params)
        .then(ret => res.status(200).json(ret))
        .catch(err => res.status(500).json(err.message))
}

module.exports.getExemplo = getExemplo