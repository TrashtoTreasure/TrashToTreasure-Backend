const mysql = require('mysql')

const db = mysql.createConnection({
    host: "", //use cloud sql host IP
    user:"root", //username
    password:"", //database password
    database:"t2tdb", //database name
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
