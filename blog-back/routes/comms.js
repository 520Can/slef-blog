//用户评论
const express = require('express')
var router = express.Router()

const { commup, list, delone, commput } = require('../controllers/comms')

router.post('/', commup)
router.get('/', list)
router.delete('/', delone)
router.put('/', commput)

module.exports = router