module.exports = (app, auth) => {
  app.get('/my-ip', (req, res) => {
    const clientIP = req.connection.remoteAddress || req.socket.remoteAddress;
    res.status(200).json({ ip: clientIP });
  })
}