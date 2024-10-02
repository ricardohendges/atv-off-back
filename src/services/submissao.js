const db = require('../configs/db')

const sql_getSubmissoes = `
select submissoes.sub_id, 
       submissoes.sub_codigo,
       submissoes.sub_status,
       submissoes.sub_data,
       submissoes.sub_ip,
       atividade.atv_id, 
       atividade.atv_titulo,
       atividade.atv_code,
       dupla.dup_id,
       dupla.dup_nome
  from submissoes 
 inner join atividade 
    on (atividade.atv_id = submissoes.atv_id)
 inner join dupla
    on (dupla.dup_id = submissoes.dup_id)`

const getSubmissao = async (params, adm) => {
    let result = {rows: []}
    if (!adm) {
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
` insert into submissoes (dup_id, atv_id, sub_codigo, sub_status, sub_data, sub_ip)
                  values ($1,     $2,     $3,         $4,         $5,       $6)`

const postSubmissao = async (params, myIP) => {
    const dup_id = params.perfilAcesso.dup_id
    const { atv_id, codigo, status } = params
    const dataAtual = new Date()
    return await db.query(sql_insertSubmissao, [dup_id, atv_id, codigo, status, dataAtual, myIP])
}

const sql_updateSubmissao = 
` update submissoes 
     set sub_status = $1
   where sub_id = $2 `

const patchSubmissao = async (params) => {
    const { sub_id, status } = params
    return await db.query(sql_updateSubmissao, [status, sub_id])
}

module.exports.patchSubmissao = patchSubmissao
module.exports.postSubmissao = postSubmissao
module.exports.getSubmissao = getSubmissao