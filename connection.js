const mysql = require('mysql')

const db = mysql.createConnection({
    host: "34.128.86.5",
    user:"root",
    password:"t2t-database",
    database:"t2tdb",
    //socketPath: '/cloudsql/artful-guru-386801:asia-southeast2:t2t-database'
})

// Membuat koneksi ke MySQL
db.connect((err) => {
    if (err) {
      console.error('Koneksi ke MySQL gagal: ', err);
    } else {
      console.log('Terhubung ke MySQL');
    }
});

module.exports = db