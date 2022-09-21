// const http = require('http')
const https = require('https')
const express = require('express')
const cors = require('cors')
const cookie = require('cookie-parser')
require('dotenv').config()


const PORT = process.env.PORT_SERVER || 3000
const app = express()

let domains = process.env.APPLICATION_DOMAIN || ['https://localhost:8080', 'https://192.168.0.59:8080', 'https://10.102.10.56:8080']
const corsOptions = {
    origin: function (origin, callback) {
        if (domains.indexOf(origin) !== -1 || !origin) callback(null, true)
        else callback(new Error(`Not allowed by CORS? ${origin} // ${domains}`))
    }, 
    methods: 'GET,HEAD,PUT,PATCH,POST,DELETE,OPTIONS', 
    credentials: true
}

app.use(cookie())
app.use(cors(corsOptions))
app.use(express.json())

// Carrega todas rotas
require('./routes')(app)
app.get('/', (req, res) => res.status(200).send('Maratona-BACK (x) UP!'))

const fs = require('fs');
const privateKey  = fs.readFileSync('./src/private/server.pem', 'utf8');
const certificate = fs.readFileSync('./src/private/server.crt', 'utf8');
const credentials = {key: privateKey, cert: certificate};

// const httpServer = http.createServer(app)
const httpsServer = https.createServer(credentials, app);
// httpsServer.listen(8443)

if (process.env.NODE_ENV != 'test') {
    httpsServer.listen(PORT, async () => {
        try {
            const { address, port, family } = httpsServer.address()
            console.log(`App is running: ${family} https://${family === 'IPv6' ? `[${address}]` : address}:${port}`)
        } catch (err) {
            console.error(err)
        }
    })
}

process.on('SIGINT', () => {
    console.log('\nShutting down from SIGINT (Ctrl-C)')
    httpsServer.close((error) => {
        if (error) console.error(error.message)
    })
    process.exit(1)
})