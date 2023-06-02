const mysql = require('mysql')

const db = mysql.createConnection({
    host: "34.128.86.5",
    user:"root",
    password:"",
    database:"t2tdb"
})

module.exports = db