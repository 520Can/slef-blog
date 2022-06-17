const commModel = require('../models/comms')

const commup = async (req, res, next) => {
    const { username, articleTitle, content, date, status } = req.body
    const rest = await commModel.commup({ username, articleTitle, content, date, status })
    if (rest.length == 0) {
        res.render('succ', {
            data: JSON.stringify({
                message: '评论失败,留言失败',
                code: 0
            })
        })
    } else {
        res.render('succ', {
            data: JSON.stringify({
                message: '评论成功,等待管理员审核',
                code: 1
            })
        })
    }
}
const list = async (req, res, next) => {
    const rest = await commModel.findList()
    res.render('succ', {
        data: JSON.stringify(rest)
    })
}

const delone = async (req, res, next) => {
    const { id } = req.body
    const rest = await commModel.delone(id)
    if (rest.length == 0) {
        res.render('succ', {
            data: JSON.stringify({
                message: '删除失败',
                code: 0
            })
        })
    } else {
        res.render('succ', {
            data: JSON.stringify({
                message: '删除成功',
                code: 1
            })
        })
    }
}

const commput = async (req, res, next) => {
    const { id, status } = req.body
    console.log(status);
    const rest = await commModel.commput(id, status)
    res.render('succ', {
        data: JSON.stringify({
            message: '修改成功'
        })
    })
}

exports.commup = commup
exports.list = list
exports.delone = delone
exports.commput = commput