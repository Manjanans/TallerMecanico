const express = require('express');
const path = require('path');
const mysqlConnection = require('./mysql');

const app = express();
const port = 3000;

app.set('view engine', 'ejs');

app.use(express.static(path.join(__dirname, '..', 'public')));

app.get('/', (req, res) => {
    const query = 'CALL PRC_CLIENTE();';  // Modify this query based on your database schema
    mysqlConnection.query(query, (error, results) => {
        if (error) {
            console.error('Error executing query:', error);
            res.status(500).send('Internal Server Error');
            return;
        }
        res.render('index', { users: results[0] });
    });
});

app.get('/servicios', function (req, res) {
    res.render('servicios');
  });

app.get('/ver_horas',function(req,res){
  var disponible = [];
  var fechas = []; 
  const query = 'CALL PRC_VER_HORA()';
  mysqlConnection.query(query,(error,results)=>{
    if (error) {
      console.error('Error executing query:', error);
      res.status(500).send('Internal Server Error');
      return;
    }
    results[0].forEach(element => {
      
      if(element.ESTADO == 0){
        disponible.push(element);
        fechas.push(element.FECHA_INI);
      }
    });
    
    const uniqueDatesSet = new Set(fechas);
    // Convert Set back to array
    const uniqueDatesArray = Array.from(uniqueDatesSet);
    const sorteado = uniqueDatesArray.sort((a, b) => {
      // Assuming date format is DD/MM/YYYY
      const dateA = new Date(a.split("/").reverse().join("/"));
      const dateB = new Date(b.split("/").reverse().join("/"));
      return dateA - dateB;
    });
    res.render('hora',{ dates : sorteado, horas : disponible })
  })  
});  

app.use(express.json());
app.use(express.urlencoded({ extended: false }));

app.post('/validar', function (req, res) {
    const datos = req.body;
    let descripcion = datos.descripcion;
    let registrar = `CALL PRC_INS_TS('${descripcion}')`;
  
    conexion.query(registrar, function (error) {
      if (error) {
        throw error;
      } else {
        console.log('Datos almacenados correctamente');
      }
    });
  
    console.log(datos);
});

app.listen(port, () => {
  console.log(`Server is listening at http://localhost:${port}`);
});