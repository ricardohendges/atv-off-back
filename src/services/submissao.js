const db = require('../configs/db')

const sql_getSubmissoes = `
select submissoes.sub_id, 
       submissoes.sub_codigo,
       submissoes.sub_status,
       submissoes.sub_data at time zone 'utc' at time zone 'America/Sao_Paulo' as sub_data,
       atividade.atv_id, 
       atividade.atv_titulo,
       dupla.dup_id,
       dupla.dup_nome
  from submissoes 
 inner join atividade 
    on (atividade.atv_id = submissoes.atv_id)
 inner join dupla
    on (dupla.dup_id = submissoes.dup_id)`

const getSubmissao = async (params) => {
    let result = {rows: []}
    if (!params.perfilAcesso.isADM) {
        let sql = sql_getSubmissoes + ' where submissoes.dup_id = $1 '
        let bind = params.perfilAcesso.dup_id
        result = await db.query(sql, [bind])
    } else {
        result = await db.query(sql_getSubmissoes)
    }
    return {
        total: result.rows.length,
        submissao: result.rows
    }
}
const sql_insertSubmissao = 
` insert into submissoes (dup_id, atv_id, sub_codigo, sub_status, sub_data)
                  values ($1,     $2,     $3,         $4,         $5)`

const postSubmissao = async (params) => {
    const dup_id = params.perfilAcesso.dup_id
    const { atv_id, codigo, status } = params
    const dataAtual = new Date()
    result = await db.query(sql_insertSubmissao, [dup_id, atv_id, codigo, status, dataAtual])
    return {
        total: result.rows.length,
        submissao: result.rows
    }
}

module.exports.postSubmissao = postSubmissao
module.exports.getSubmissao = getSubmissao