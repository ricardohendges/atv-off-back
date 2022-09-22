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
                let qtdeTentado = submissoes.submissao.filter(c => c.atv_id == b.atv_id && c.dup_id == a.dup_id).length
                atv.qtdeTentado = qtdeTentado ? qtdeTentado : null
                let correta = submissoes.submissao.find(c => c.atv_id == b.atv_id && c.dup_id == a.dup_id && c.sub_status == 'Accepted')
                let incorretas = submissoes.submissao.filter(c => c.atv_id == b.atv_id && c.dup_id == a.dup_id && c.sub_status != 'Accepted')
                atv.status = correta ? 'Accepted' : (atv.qtdeTentado > 0) ? 'Tried' : null
                let inicio = new Date(process.env.INICIO_TORNEIO)
                let dataFeita = new Date(correta?.sub_data)
                dataFeita.setHours(dataFeita.getHours() - 3)
                atv.pontos = Math.trunc(((dataFeita - inicio)/1000)/60*10) + (incorretas.length * 120)
                return atv
            })
            dupla.finalizadas = dupla.atividades.filter(d => d.status == 'Accepted').length
            dupla.pontos = dupla.atividades.map(a => a.pontos).reduce((a,b) => (a||0)+(b||0))
            return dupla
        })
        rank.duplas.sort((a, b) => {
            if (a.finalizadas > b.finalizadas) return -1
            else if (a.finalizadas < b.finalizadas) return 1
            if (a.pontos < b.pontos) return -1
            else if (a.pontos > b.pontos) return 1
            return 0
        })
        res.status(200).json(rank)
    } catch (err) {
        res.status(500).json(err.message)
    }
}

module.exports.getRank = getRank