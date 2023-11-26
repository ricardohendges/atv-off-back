const swaggerAutogen = require('swagger-autogen')('pt-BR')
const pjson = require('../../package.json')
const fs = require('fs')
const { join } = require('path')

const doc = {
    info: {
        version: pjson.version,
        title: 'Gestor de Trabalhos',
        description: 'Documentação da API CST - Portal de clientes DASS'
    },
    host: process.env.HOST_SERVER,
    basePath: process.env.URL_DOCUMENTACAO||'',
    schemes: ['https'],
    consumes: ['application/json'],
    produces: ['application/json'],
}

const outputFile = './src/docs/swagger.yaml'
const routeFiles = fs.readdirSync(join(__dirname,'..','routes'))
const endpointsFiles = routeFiles.map(file => `./src/routes/${file}`)

swaggerAutogen(outputFile, endpointsFiles, doc)

fs.readFile('src/views/swagger-initializer.js', 'utf8', function (err,data) {
    if (err) return console.log(err)
    let linhas = data.split('\n').filter(a => a.includes('url:'))
    let linhaTry = data.split('\n').filter(a => a.includes('wrapSelectors:'))
    let result = data.replace(linhas, `    url: "${process.env.URL_DOCUMENTACAO||''}/docs/swagger.yaml", `)
    result = result.replace(linhaTry, `wrapSelectors: { allowTryItOutFor: () => () => ${process.env.TRY_DOC||'false'} } `)
    fs.writeFile('src/views/swagger-initializer.js', result, 'utf8', function (err) {
        if (err) return console.log(err)
    })
})