const exemploServices = require('../services/exemplos')

const getExemplo = async (req, res) => {
    exemploServices.getExemplo(req.params)
        .then(ret => res.status(200).json(ret))
        .catch(err => res.status(500).json(err.message))
}

const postExemplo = async (req, res) => {
    let params = req.body;
    params.atv_id = req.params.atv_id;
    exemploServices.postExemplo(params)
        .then(ret => res.status(200).json({ message: 'Inserido com sucesso!', ...ret }))
        .catch(err => res.status(500).json(err.message))
}

module.exports.getExemplo = getExemplo
module.exports.postExemplo = postExemplo