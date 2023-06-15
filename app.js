const express = require('express');
const app = express();
const bodyparser = require('body-parser');
const db = require('./connection');
const { articleResponse, feedbackResponse } = require('./response');
const port = 5000;
// Listen to the App Engine-specified port, or 8080 otherwise
const PORT = process.env.PORT || port;

app.use(bodyparser.json());

// endpoint halaman awal
app.get('/', (req, res) => {
  res.send('Hello World! Welcome to T2T home API endpoint!!');
});

app.listen(PORT, () => {
    console.log(`App berjalan pada PORT ${PORT}`);
});
//app.listen(PORT, () => {
//  console.log(`App berjalan pada PORT ${PORT}`);
//});

// endpoint menampilkan artikel
app.get('/articles', (req, res) => {
    const sql = "SELECT * FROM articles";
    db.query(sql, (error, result) => {
      if (error) {
        articleResponse(500, null, "Failed to get all articles", res);
      } else {
        if (result.length === 0) {
          articleResponse(404, null, "Tidak ada artikel yang ditemukan", res);
        } else {
          articleResponse(200, result, "Mendapatkan semua artikel", res);
        }
      }
    });
  });
  
  // endpoint menampilkan semua feedback tanpa filterisasi
  app.get('/feedback', (req, res) => {
    const sql = "SELECT * FROM feedback";
    db.query(sql, (error, result) => {
      if (error) {
        feedbackResponse(500, null, "Failed to get all feedback", res);
      } else {
        if (result.length === 0) {
          feedbackResponse(404, null, "Tidak ada feedback yang ditemukan", res);
        } else {
          feedbackResponse(200, result, "Mendapatkan semua feedback", res);
        }
      }
    });
  });
  
  // endpoint menambahkan feedback
    app.post('/feedback', (req, res) => {
    const { email, rate, text } = req.body
    const timestamp = new Date().toISOString() // Menggunakan current timestamp
    const sql = `INSERT INTO feedback (timestamp, email, rate, text) VALUES ('${timestamp}', '${email}', '${rate}', '${text}')`;
    console.log(sql)
    db.query(sql, (error, result) => {
      if (error) {
        feedbackResponse(500, null, "Failed to insert feedback", res);
      } else {
        if (result.affectedRows > 0) {
          const feedback = {
            isSuccess: true,
            id: result.insertId,
            timestamp: timestamp,
            email: email,
            rate: rate,
            text: text
          };
          feedbackResponse(200, feedback, "Data feedback berhasil ditambahkan", res);
        } else {
          feedbackResponse(400, null, "Bad Request", res);
        }
      }
    });
  });
  
  // endpoint untuk melakukan update terhadap feedback
  app.put('/feedback', (req, res) => {
      const { id, email, rate, text } = req.body
      const timestamp = new Date().toISOString() // using current timestamp
      const sql = `UPDATE feedback SET timestamp = '${timestamp}', email = '${email}', rate = '${rate}', text = '${text}' WHERE id = ${id}`;
    
      db.query(sql, (error, result) => {
        if (error) {
          feedbackResponse(500, null, "Failed to update feedback", res);
        } else {
          if (result.affectedRows > 0) {
            const feedback = {
              isSuccess: true,
              id: id,
              timestamp: timestamp,
              email: email,
              rate: rate,
              text: text
            };
            feedbackResponse(200, feedback, "Data feedback berhasil diperbarui", res);
          } else {
            feedbackResponse(400, null, "Bad Request", res);
          }
        }
      });
  });
    