const atividadesServices = require('../services/atividade')

const getAtividades = async (req, res) => {
    try {
        const rows = await atividadesServices.getAtividades()
        res.status(200).json(rows)
    } catch (err) {
        res.status(500).json(err.message)
    }
}

module.exports.getAtividades = getAtividades