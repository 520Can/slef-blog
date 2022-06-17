const articlesModel = require('../models/articles')

const articleup = async (req, res, next) => {
    // res.send('123')
    res.set('content-type', 'application/json;charset=utf-8')
    const { title, author, sort, time, article } = req.body

    let rest = await articlesModel.articleup({
        title, author, sort, time, article
    })
    if (rest.length == 0) {
        res.render('succ', {
            data: JSON.stringify({
                message: '添加成功'
            })
        })
    } else {
        res.render('succ', {
            data: JSON.stringify({
                message: '添加成功'
            })
        })
    }
}

const articlelist = async (req, res, next) => {
    res.set('content-type', 'application/json;charset=utf-8')
    const listResult = await articlesModel.findList()
    res.render('succ', {
        data: JSON.stringify(listResult)
    })
}

const remove = async (req, res, next) => {
    res.set('content-type', 'application/json;charset=utf-8')
    const { id } = req.body
    const deleteone = await articlesModel.remove(id)
    if (deleteone) {
        res.render('succ', {
            data: JSON.stringify(deleteone),
            message: '删除成功',
            code: 1
        })
    } else {
        res.render('fail', {
            data: JSON.stringify({
                message: '删除失败',
                code: 0
            })
        })
    }
}


exports.articleup = articleup
exports.articlelist = articlelist
exports.remove = remove