const crypto = require('crypto');

function generateSalt() {
    return crypto.randomBytes(16).toString('hex');
}

function hashPassword(pass, salt) {
    return crypto.pbkdf2Sync(pass, salt, 1000, 64, 'sha512').toString('hex')
}

// console.log(hashPassword('Ellie1701!', 'd9205b8ea0b6a37773633a3bb4d7dd9e'))

module.exports = { generateSalt, hashPassword }