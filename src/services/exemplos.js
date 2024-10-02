const db = require('../configs/db')

const sql_getExemplo = 'select * from exemplo where atv_id = $1'

const getExemplo = async (params) => {
    result = await db.query(sql_getExemplo, [params.atv_id])
    return {
        total: result.rows.length,
        exemplo: result.rows
    }
}

const sql_postExemplo = `
 insert into exemplo (atv_id, exe_entrada, exe_saida)
              values ($1,     $2,          $3) `;

const postExemplo = async (params) => {
    let {atv_id, exe_entrada, exe_saida} = params;
    return await db.query(sql_postExemplo, [atv_id, exe_entrada, exe_saida]);
}

module.exports.getExemplo = getExemplo
module.exports.postExemplo = postExemplo