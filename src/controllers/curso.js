const cursoServices = require('../services/curso')

const getCurso = async (req, res) => {
    cursoServices.getCurso()
        .then(ret => res.status(200).json(ret))
        .catch(err => res.status(500).json(err.message))
}

const postCurso = async (req, res) => {
    cursoServices.postCurso(req.body)
        .then(ret => res.status(201).json(ret))
        .catch(err => res.status(500).json(err.message))
}

module.exports.getCurso = getCurso
module.exports.postCurso = postCurso