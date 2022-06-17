var express = require('express');
var router = express.Router();

const { articleup, articlelist, remove } = require('../controllers/articles')
/* GET users listing. */
router.post('/', articleup);
router.get('/', articlelist)
router.delete('/', remove)

module.exports = router;