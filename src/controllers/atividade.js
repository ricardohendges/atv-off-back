const atividadesServices = require('../services/atividade')
const submissaoServices = require('../services/submissao')

const getAtividades = async (req, res) => {
    try {
        const sub = await submissaoServices.getSubmissao(req.body, false)
        const atv = await atividadesServices.getAtividades()
        sub.submissao.sort((a,b) => {
            if (a.sub_data < b.sub_data) return 1
            else if (a.sub_data > b.sub_data) return -1
            return 0
        })
        let atividades = atv.atividades.map(a => {
            let atividade = a
            atividade.atv_status = sub.submissao.find(b => b.atv_id==a.atv_id)?.sub_status
            return atividade
        })
        res.status(200).json({atividades: atividades})
    } catch(err) {
        res.status(500).json(err.message)
    }
}

module.exports.getAtividades = getAtividades