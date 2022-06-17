// 用户留言
var express = require('express')
var router = express.Router()

const { messup, messlist, remove } = require('../controllers/mess')

router.post('/', messup)
router.get('/', messlist)
router.delete('/', remove)

module.exports = router