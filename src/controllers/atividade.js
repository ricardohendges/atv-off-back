const atividadesServices = require('../services/atividade')

const getAtividades = async (req, res) => {
    atividadesServices.getAtividades()
        .then(ret => res.status(200).json(ret))
        .catch(err => res.status(500).json(err.message))
}

module.exports.getAtividades = getAtividades