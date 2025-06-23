const express = require('express');
const app = express();
const rotasInventario = require('./Routes/rotasInventario.js');

app.use(express.json());

app.use('/Inventario', rotasInventario);

app.listen(3000);