const http = require('http')
const express = require('express')
const cors = require('cors')

const PORT = process.env.PORT_SERVER || 3000
const app = express()

let domains = process.env.APPLICATION_DOMAIN || ['http://localhost:3070']
const corsOptions = {
    origin: function (origin, callback) {
        if (domains.indexOf(origin) !== -1 || !origin) callback(null, true)
        else callback(new Error(`Not allowed by CORS? ${origin} // ${domains}`))
    }, 
    methods: 'GET,HEAD,PUT,PATCH,POST,DELETE,OPTIONS', 
    credentials: true
}

app.use(cors(corsOptions))
app.use(express.json())

// Carrega todas rotas
require('./routes')(app)
app.get('/', (req, res) => res.status(200).send('Maratona-BACK (x) UP!'))

const httpServer = http.createServer(app)

if (process.env.NODE_ENV != 'test') {
    httpServer.listen(PORT, async () => {
        try {
            const { address, port, family } = httpServer.address()
            console.log(`App is running: ${family} http://${family === 'IPv6' ? `[${address}]` : address}:${port}`)
        } catch (err) {
            console.error(err)
        }
    })
}

process.on('SIGINT', () => {
    console.log('\nShutting down from SIGINT (Ctrl-C)')
    httpServer.close((error) => {
        if (error) console.error(error.message)
    })
    process.exit(1)
})