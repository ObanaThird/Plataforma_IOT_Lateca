const express = require('express');
const router = express.Router();
const InventarioController = require('../Controller/InventarioController')

router.post('/', InventarioController.novoItem);

module.exports = router;