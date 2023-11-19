const express = require('express');
const path = require('path');
const mysqlConnection = require('./mysql');
const { redirect } = require('express/lib/response');
const moment = require('moment');
const mtz = require('moment-timezone');

require('moment/locale/es');
mtz.locale('es-CL');

const app = express();
const port = 3000;

app.set('view engine', 'ejs');

app.use(express.static(path.join(__dirname, '..', 'public')));
app.use(express.json());
app.use(express.urlencoded({ extended: false }));

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

app.get('/ag_servicios', (req, res) => {
  const query = 'CALL PRC_TP_SERVICIO();';
  mysqlConnection.query(query, (error, results) => {
    if (error) {
      console.error('Error executing query:', error);
      res.status(500).send('Internal Server Error');
      return;
    }
    // Verifica los resultados en la consola
    console.log('datos', { TP_SERVICIO: results[0] });
res.render('ag_servicios', { TP_SERVICIO: results[0] });
  });
});





app.get('/ver_servicios', (req, res) => {
  const query = 'CALL PRC_SERVICIO();';
  mysqlConnection.query(query, (error, results) => {
    if (error) {
      console.error('Error executing query:', error);
      res.status(500).send('Internal Server Error');
      return;
    }
    console.log('datos', { servicio: results[0] })
    res.render('ver_servicios', { servicio: results[0] });
  });
});


app.get('/ver_horas', function (req, res) {
  var disponible = [];
  var fechas = [];
  const query = 'CALL PRC_VER_HORA()';
  mysqlConnection.query(query, (error, results) => {
    if (error) {
      console.error('Error executing query:', error);
      res.status(500).send('Internal Server Error');
      return;
    }
    results[0].forEach(element => {
      disponible.push(element);
      fechas.push(element.FECHA_INI);
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
    res.render('hora', { dates: sorteado, horas: disponible });


  })
});

app.get('/calendario', function (req, res) {
  const query = 'CALL PRC_VER_HORA()';
  mysqlConnection.query(query, (error, results) => {
    mtz.locale('es-CL');
    const events = results[0].map(hora => ({
      title: mtz.tz(hora.HORA_INI, "HH:mm:ss", "America").format("HH:mm"), // Event title
      start: mtz.tz(hora.FECHA_INI + " " + hora.HORA_INI, "DD/MM/YYYY HH:mm:ss", "America").toDate(), // Start date
      id: hora.ID_HORA,
      fecha: hora.FECHA_INI,
      inicial: hora.HORA_INI,
      // End date (optional)
    }));
    res.json(events);
  });
});

app.post('/updateHora', (req, res) => {
  const idHora = req.body.idHora;
  const idCliente = req.body.idCliente;
  const query = `CALL PRC_TOMAR_HORA(${idHora},${idCliente});`;
  mysqlConnection.query(query, function (error) {
    if (error) {
      throw error;
    } else {
      console.log('Datos almacenados correctamente');
      res.redirect('/');
    }
  })
});



app.post('/validar', function (req, res) {
  const datos = req.body;
  let descripcion = datos.descripcion;
  let registrar = `CALL PRC_INS_TS('${descripcion}')`;

  mysqlConnection.query(registrar, function (error) {
    if (error) {
      throw error;
    } else {
      console.log('Datos almacenados correctamente');
    }
  });
  console.log(datos);
});


app.post('/validarServ', function (req, res) {
  const datos = req.body;
  let id_tipo_serv = datos.tipoServicio;
  let valor = datos.valorServicio;
  let nomserv = datos.nombreServicio;
  let imagen = datos.imagenServicio;

  // Verifica que los valores no sean undefined antes de construir la consulta
  if (id_tipo_serv !== undefined && valor !== undefined && nomserv !== undefined && imagen !== undefined) {
    let registrar = `CALL PRC_INS_SERV(?, ?, ?, ?)`;

    mysqlConnection.query(registrar, [id_tipo_serv, nomserv, valor, imagen], function (error) {
      if (error) {
        console.error(error);
        throw error;
      } else {
        console.log('Datos almacenados correctamente');
        res.send('Datos almacenados correctamente');
      }
    });
  } else {
    console.error('Alguno de los valores es undefined');
    res.status(400).send('Bad Request: Alguno de los valores es undefined');
    res.render('ver_servicios');
  }
});


app.listen(port, () => {
  console.log(`Server is listening at http://localhost:${port}`);
}); 