// const http = require('http')
const https = require('https')
const express = require('express')
const cors = require('cors')
const cookie = require('cookie-parser')
require('dotenv').config()


const PORT = process.env.PORT_SERVER || 3000
const app = express()
app.use(cookie())
app.use(express.json())

// controle de cors
let domains = process.env.APPLICATION_DOMAIN || ['https://localhost:8080', 'https://localhost:3000', 'https://10.102.10.56:8080']
const corsOptions = {
    origin: function (origin, callback) {
        if (domains.indexOf(origin) !== -1 || !origin) callback(null, true)
        else callback(new Error(`Not allowed by CORS? ${origin} // ${domains}`))
    }, 
    methods: 'GET,HEAD,PUT,PATCH,POST,DELETE,OPTIONS', 
    credentials: true
}
app.use(cors(corsOptions))
// Rota para documentação
require('./configs/swagger')
app.use('/docs', express.static('src/views'))
app.use('/docs/swagger.yaml', express.static('src/docs/swagger.yaml'))
// Carrega todas rotas
require('./routes')(app)
app.get('/', (req, res) => res.status(200).send('Gestor API (x) UP!'))

// Controle HTTPS
const fs = require('fs');
const privateKey  = fs.readFileSync('./src/private/server.pem', 'utf8');
const certificate = fs.readFileSync('./src/private/server.crt', 'utf8');
const credentials = {key: privateKey, cert: certificate};
const httpsServer = https.createServer(credentials, app);

httpsServer.listen(PORT, async () => {
    try {
        const { address, port, family } = httpsServer.address()
        console.log(`App is running: ${family} https://${family === 'IPv6' ? `[${address}]` : address}:${port}`)
    } catch (err) {
        console.error(err)
    }
})

process.on('SIGINT', () => {
    console.log('\nShutting down from SIGINT (Ctrl-C)')
    httpsServer.close((error) => {
        if (error) console.error(error.message)
    })
    process.exit(1)
})