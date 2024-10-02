const db = require('../configs/db')

const sql_getAtividades = 'select * from atividade'

const getAtividades = async () => {
    result = await db.query(sql_getAtividades)
    return {
        total: result.rows.length,
        atividades: result.rows
    }
}

const sql_postAtividades = 
` insert into atividade (atv_id, atv_code, atv_dificuldade, atv_titulo, atv_descricao, atv_entrada, atv_saida) 
                 values ($1,     $2,       $3,              $4,         $5,            $6,          $7) `;

const postAtividades = async (params) => {
    const { atv_id, atv_code, atv_dificuldade, atv_titulo, atv_descricao, atv_entrada, atv_saida } = params
    return await db.query(sql_postAtividades, [atv_id, atv_code, atv_dificuldade, atv_titulo, atv_descricao, atv_entrada, atv_saida])
}

module.exports.getAtividades = getAtividades
module.exports.postAtividades = postAtividades