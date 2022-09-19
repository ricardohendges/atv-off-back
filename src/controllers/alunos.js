const alunosServices = require('../services/alunos')

const getAlunos = async (req, res) => {
    try {
        const rows = await alunosServices.getAlunos()
        res.status(200).json(rows)
    } catch (err) {
        res.status(500).json(err.message)
    }
}

const postAlunos = async (req, res) => {
    alunosServices.postAlunos(req.body)
        .then(ret => res.status(201).json('Inserido com Sucesso!'))
        .catch(err => res.status(500).json(err.message))
}

module.exports.getAlunos = getAlunos
module.exports.postAlunos = postAlunos