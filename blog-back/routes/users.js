var express = require('express');
var router = express.Router();

const { signup, list, remove, userput, userlogin } = require('../controllers/users')
/* GET users listing. */
router.post('/', signup);
router.get('/', list)
router.delete('/', remove)
router.post('/userput', userput)
router.post('/userlogin', userlogin)


module.exports = router;
