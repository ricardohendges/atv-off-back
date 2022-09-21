const duplasServices = require('../services/dupla')

const getduplas = async (req, res) => {
    try {
        const rows = await duplasServices.getduplas()
        res.status(200).json(rows)
    } catch (err) {
        res.status(500).json(err.message)
    }
}

module.exports.getduplas = getduplas