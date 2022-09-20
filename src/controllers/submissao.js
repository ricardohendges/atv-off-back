const alunosServices = require('../services/atividade')

const postAlunos = async (req, res) => {
    alunosServices.postAlunos(req.body)
        .then(ret => res.status(201).json('Inserido com Sucesso!'))
        .catch(err => res.status(500).json(err.message))
}

module.exports.postAlunos = postAlunos