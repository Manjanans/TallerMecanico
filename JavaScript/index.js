const express = require('express');
const path = require('path');
const mysqlConnection = require('./mysql');
const { redirect } = require('express/lib/response');
const moment = require('moment');
const mtz = require('moment-timezone');
const multer = require('multer'); 
require('moment/locale/es');
mtz.locale('es-CL');

const app = express();
const port = 3000;
const storage = multer.diskStorage({
  destination: function (req, file, cb) {
    cb(null, 'public/images/');
  },
  filename: function (req, file, cb) {
    cb(null, file.originalname);
  }
});

const upload = multer({ storage: storage });
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


app.post('/validarServ', upload.single('imagenServicio'), function (req, res) {
  const datos = req.body;
  let id_tipo_serv = datos.tipoServicio;
  let valor = datos.valorServicio;
  let nomserv = datos.nombreServicio;
  let imageName = req.file ? req.file.filename : null;
  const nameWithoutExtension = imageName ? path.parse(imageName).name : null;
  let registrar = `CALL PRC_INS_SERV(?, ?, ?, ?)`;
  mysqlConnection.query(registrar, [id_tipo_serv, nomserv, valor, nameWithoutExtension], function (error) {
    if (error) {
      console.error(error);
      res.status(500).send('Error al almacenar los datos.');
    } else {
      res.redirect('ver_servicios');
      console.log('Datos almacenados correctamente');
      res.send('Datos almacenados correctamente');
    }
  });
});

app.post('/eli_servicios/:id', (req, res) => {
  const id_servicio = req.params.id;

  
  const query = `CALL PRC_ELI_SERVICIO(?)`;
  mysqlConnection.query(query, [id_servicio], (error, results) => {
    if (error) {
      console.error(error);
      res.status(500).send('Error al eliminar el servicio');
    } else {
      
      const mensaje = results[0][0].mensaje;
      if (mensaje === 'Servicio eliminado correctamente') {
        console.log('Servicio eliminado correctamente');
        res.redirect('/ver_servicios');  
      } else {
        console.log('El servicio no existe');
        res.status(404).send('El servicio no existe');
      }
    }
  });
});




app.post('/edi_servicios/:id', (req, res) => {
  const id_servicio = req.params.id;

  // Recupera información del servicio para prellenar el formulario
  const query = 'SELECT * FROM SERVICIO WHERE ID_SERV = ?';
  mysqlConnection.query(query, [id_servicio], (error, results) => {
    if (error) {
      console.error(error);
      res.status(500).send('Error al obtener información del servicio');
    } else {
      // Ejecuta el procedimiento almacenado para obtener datos de tipo servicio
      const proce = 'CALL PRC_TP_SERVICIO();';
      mysqlConnection.query(proce, (error, tpResults) => {
        if (error) {
          console.error('Error executing proce:', error);
          res.status(500).send('Internal Server Error');
          return;
        }

        // Verifica los resultados en la consola
        console.log('datos', { TP_SERVICIO: tpResults[0][0] });

        // Renderiza la página de edición con la información del servicio y los datos de tipo servicio
        res.render('edi_servicios', { servicio: results[0], TP_SERVICIO: tpResults[0][0] });
      });
    }
  });
});

app.post('/updatearServicios/:id', upload.single('imagenServicio'), (req, res) => {
  const id_serv = req.params.id;
  const { tipoServicio, nombreServicio, valorServicio } = req.body;
  const imageName = req.file ? req.file.filename : null;
  const nameWithoutExtension = imageName ? path.parse(imageName).name : null;

  // Realiza la actualización en la base de datos
  const query = 'UPDATE SERVICIO SET ID_TIPO_SERV = ?, NOMSERV = ?, VALOR = ?, IMAGEN = ? WHERE ID_SERV = ?';
  mysqlConnection.query(query, [tipoServicio, nombreServicio, valorServicio, nameWithoutExtension, id_serv], (error) => {
    if (error) {
      console.error(error);
      res.status(500).send('Error al actualizar información del servicio');
    } else {
      // Redirige a la página que desees después de la actualización
      res.redirect('/ver_servicios');
    }
  });
});

app.get('/ver_empleados', (req, res) => {
  const query = 'CALL PRC_EMPLEADO();';
  mysqlConnection.query(query, (error, results) => {
    if (error) {
      console.error('Error executing query:', error);
      res.status(500).send('Internal Server Error');
      return;
    }
    console.log('datos', { EMPLEADO: results[0] })
    res.render('ver_empleados', { EMPLEADO: results[0] });
  });
});

app.get('/ag_empleados', (req, res) => {
  // Realiza las dos consultas simultáneamente
  Promise.all([
    new Promise((resolve, reject) => {
      const query1 = 'SELECT * FROM TIPO_EMPLEADO;';
      mysqlConnection.query(query1, (error, results) => {
        if (error) {
          console.error('Error executing query1:', error);
          reject(error);
        } else {
          resolve(results); // Devuelve el array completo, no solo results[0]
        }
      });
    }),
    new Promise((resolve, reject) => {
      const query2 = 'SELECT * FROM TIPO_CONTRATO;';
      mysqlConnection.query(query2, (error, results) => {
        if (error) {
          console.error('Error executing query2:', error);
          reject(error);
        } else {
          resolve(results); // Devuelve el array completo, no solo results[0]
        }
      });
    })
  ])
    .then(([tp_empleado, tp_contrato]) => {
      console.log('datos', { tp_empleado, tp_contrato });
      res.render('ag_empleados', { tp_empleado, tp_contrato });
    })
    .catch((error) => {
      res.status(500).send('Internal Server Error');
    });
});




app.post('/valid_empleados', function (req, res) {
  const datos = req.body;
  const {
    numRun,
    nombres,
    apellidos,
    numFono,
    email,
    fechaNac,
    direccion,
    tipoEmpleado,
    tipoContrato,
    fechaCon,
    sueldo,
    usuario,
    contrasenia
  } = datos;

  const registrar = `CALL PRC_INS_EMPLEADO(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)`;
  mysqlConnection.query(
    registrar,
    [
      numRun,
      nombres,
      apellidos,
      numFono,
      email,
      fechaNac,
      direccion,
      tipoEmpleado,
      tipoContrato,
      fechaCon,
      sueldo,
      usuario,
      contrasenia
    ],
    function (error) {
      if (error) {
        console.error(error);
        res.status(500).send('Error al almacenar los datos.');
      } else {
        res.redirect('/ver_empleados');
        console.log('Datos almacenados correctamente');
      }
    }
  );
});

app.listen(port, () => {
  console.log(`Server is listening at http://localhost:${port}`);
  }); 