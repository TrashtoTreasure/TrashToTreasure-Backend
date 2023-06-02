const express = require('express')
const app = express()
const port = 5000
const bodyparser = require('body-parser')
const db = require ('./connection')
const response = require('./response')

app.use(bodyparser.json())

//endpoint halaman awal
app.get('/', (req, res) => {
    res.send('Hello World! Welcome to t2t endpoint')
})

const host = process.env.NODE_ENV !== 'production' ? 'localhost' : '0.0.0.0';

app.listen(port, () => {
    console.log(`Example app listening on ${host}:${port}`)
})

//endpoint menampilkan artikel
app.get('/articles', (req, res) => {
    const sql = "select * from articles"
    db.query(sql, (error, result)=>{
        if (error){
            response(500,null,"Failed to get all articles",res)
        }else{
            if (result.length === 0){
                response(404, null, "Tidak ada artikel yang ditemukan",res)
            }else{
                response(200, result, "Mendapatkan semua artikel", res)    
            }
        }      
    })
})
