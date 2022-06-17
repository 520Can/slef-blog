const MessModel = require('../models/mess')

const messup = async (req, res, next) => {
    res.set('content-type', 'application/json;charset=utf-8')
    const { content, nackname, date, link, headimg } = req.body
    var rest = await MessModel.messup({ content, nackname, date, link, headimg })
    if (rest.length == 0) {
        res.render('fail', {
            data: JSON.stringify({
                content, nackname, date, link, headimg,
                message: '留言失败',
                code: 0
            })
        })
    }
    res.render('succ', {
        data: JSON.stringify({
            content, nackname, date, link, headimg,
            message: '留言成功',
            code: 1
        })
    })
}

const messlist = async (req, res, next) => {
    res.set('content-type', 'application/json;charset=utf-8')
    const listResult = await MessModel.messlist()
    res.render('succ', {
        data: JSON.stringify(
            listResult
        )
    })
}

const remove = async (req, res, next) => {
    res.set('content-type', 'application/json;charset=utf-8')
    const { id } = req.body
    const delone = await MessModel.remove(id)
    res.render('succ', {
        data: JSON.stringify(delone)
    })
}
exports.messup = messup
exports.messlist = messlist
exports.remove = remove