const { Users } = require('../utils/db')

//注册前去查找数据库中是否存在该用户
const findUser = (username) => {
    return Users.findOne({ username })
}
//用户注册
// username, password, date, nackname, evaluate, graduate, phone, email
const signup = ({ username, password, date, nackname, evaluate, graduate, phone, email }) => {
    const users = new Users({
        username, password, date, nackname, evaluate, graduate, phone, email
    })
    return users.save()
}

//查找用户列表
const findList = () => {
    return Users.find().sort({ _id: -1 })
}

//删除用户
const remove = id => {
    console.log(id);
    return Users.deleteOne({ _id: id })
}
//更新用户信息
const userput = (id, nackname, evaluate, graduate, phone, email) => {
    return Users.findByIdAndUpdate({ _id: id }, { nackname, evaluate, graduate, phone, email })
}

//获取用户登录


exports.signup = signup
exports.findUser = findUser
exports.findList = findList
exports.remove = remove
exports.userput = userput
// 等价于
// modules.exports = {
//     signup
// }