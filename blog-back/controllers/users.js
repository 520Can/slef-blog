const usersModel = require('../models/users')
const { hash } = require('../utils/hash')


//用户登录


//注册用户
const signup = async (req, res, next) => {
    res.set('content-type', 'application/json;charset=utf-8')
    const { username, password, date, nackname, evaluate, graduate, phone, email } = req.body
    let findRes = await usersModel.findUser(username)
    if (findRes) {
        res.render('fail', {
            data: JSON.stringify({
                message: '用户名已存在'
            })
        })
    } else {
        await usersModel.signup({
            username,
            // password: bcryptPassword,
            password,
            date,
            nackname,
            evaluate,
            graduate,
            phone,
            email
        })
        res.render('succ', {
            data: JSON.stringify({
                message: '添加成功'
            })
        })
    }
}
//获取用户列表
const list = async (req, res) => {
    // 设置头部
    res.set('content-type', 'application/json;charset=utf-8')
    const listResult = await usersModel.findList()
    res.render('succ', {
        data: JSON.stringify(listResult)
    })
}
//删除用户
const remove = async (req, res, next) => {
    res.set('content-type', 'application/json;charset=utf-8')
    const { id } = req.body
    const deleteone = await usersModel.remove(id)
    if (deleteone) {
        res.render('succ', {
            data: JSON.stringify(deleteone)
        })
    } else {
        res.render('fail', {
            data: JSON.stringify({
                message: '失败'
            })
        })
    }
}


//修改用户信息
const userput = async (req, res, next) => {
    const { id, nackname, evaluate, graduate, phone, email } = req.body
    const rest = await usersModel.userput(id, nackname, evaluate, graduate, phone, email)
    if (rest) {
        res.render('succ', {
            data: JSON.stringify({
                message: '修改成功'
            })
        })
    }
}

//查找用户信息
const userlogin = async (req, res, next) => {
    const { username, password } = req.body
    console.log(req.body);
    const user = await usersModel.findUser(username)
    // console.log(user);
    // console.log(user.password);
    if (!user) {
        res.render('fail', {
            data: JSON.stringify({
                code: -1,
                message: '该用户不存在，请联系管理员添加',
                status: false
            })
        })
    } else {
        // const password = await usersModel.findUser(password)
        // if ()
        if (password == user.password) {
            res.render('succ', {
                data: JSON.stringify({
                    code: 1,
                    message: '密码正确',
                    status: true
                })
            })
        } else {
            res.render('fail', {
                data: JSON.stringify({
                    code: 0,
                    message: '密码错误',
                    status: false
                })
            })
        }

    }

    // const rest=await usersModel.userlogin(username,password)
}
exports.signup = signup
exports.list = list
exports.remove = remove
exports.userput = userput
exports.userlogin = userlogin