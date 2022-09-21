const duplaServices = require('../services/dupla')
const submissaoServices = require('../services/submissao')
const atividadeServices = require('../services/atividade')

const getRank = async (req, res) => {
    try {
        let rank = {}
        const duplas = await duplaServices.getduplas()
        const submissoes = await submissaoServices.getSubmissao(req.body, true)
        const atividades = await atividadeServices.getAtividades()
        rank.duplas = duplas.duplas.map(a => {
            let dupla = a
            dupla.atividades = atividades.atividades.map(b => {
                let atv = {} 
                atv.atv_id = b.atv_id
                atv.atv_code = b.atv_code
                atv.qtdeTentado = submissoes.submissao.filter(c => c.atv_id == b.atv_id && c.dup_id == a.dup_id).length
                let correta = submissoes.submissao.filter(c => c.atv_id == b.atv_id && c.dup_id == a.dup_id && c.sub_status == 'Accepted').length
                atv.status = correta > 0 ? 'Accepted' : (atv.qtdeTentado > 0) ? 'Tried' : null
                return atv
            })
            return dupla
        })
        res.status(200).json(rank)
    } catch (err) {
        res.status(500).json(err.message)
    }
}

module.exports.getRank = getRank