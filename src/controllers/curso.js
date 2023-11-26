const cursoServices = require('../services/curso')

const getCurso = async (req, res) => {
    cursoServices.getCurso()
        .then(ret => res.status(201).json(ret))
        .catch(err => res.status(500).json(err.message))
}

module.exports.getCurso = getCurso