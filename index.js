// index.js

const express = require('express');
const path = require('path');

const app = express();
const port = 3000;

let conexion = mysql.createConnection({
  host: "localhost",
  database: "taller_mecanico",
  user:"root",
  password: "1234"
})
app.set('view engine', 'ejs');

//reconoce los datos enviados desde el html
app.use(express.json());
app.use (express.urlencoded({extended:false}))

// Serve static files from the 'public' directory
app.use(express.static(path.join(__dirname, 'public')));

// Define routes for different pages
app.get('/', (req, res) => {
  res.sendFile(path.join(__dirname, 'public', 'HTML', 'index.html'));
});

app.get('/form', (req, res) => {
  res.sendFile(path.join(__dirname, 'public', 'HTML', 'formulario.html'));
});

app.get('/contact', (req, res) => {
  res.sendFile(path.join(__dirname, 'public', 'contact.html'));
});

// Start the server
app.listen(port, () => {
  console.log(`Server is listening at http://localhost:${port}`);
});