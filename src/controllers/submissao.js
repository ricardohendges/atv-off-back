const atividadeServices = require('../services/submissao')

const getSubmissao = async (req, res) => {
    atividadeServices.getSubmissao (req.body, req.body.perfilAcesso.isADM)
        .then(ret => res.status(200).json(ret))
        .catch(err => res.status(500).json(err.message))
}

const postSubmissao = async (req, res) => {
    const params = req.body
    if (params.atv_id && params.codigo && params.status) {
        atividadeServices.postSubmissao (req.body)
            .then(ret => res.status(201).json(ret))
            .catch(err => res.status(500).json(err.message))
    } else {
        res.status(400).json({type: 'ERRO', message: 'Alimente o campo do código! Garanta que esteja logado e que tenha selecionado a atividade!'})
    }
}

module.exports.getSubmissao = getSubmissao
module.exports.postSubmissao = postSubmissao