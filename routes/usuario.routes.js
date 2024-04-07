const express = require('express');
const router = express.Router();

const usuarioController = require('../controllers/usuario.controller');

router.get('/usuarios', usuarioController.getUsuarioPage);
router.post('/reactivate-usuario', usuarioController.post_reactivate_Usuario);
router.post('/delete-usuario', usuarioController.post_delete_Usuario);


module.exports = router;