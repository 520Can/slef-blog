const { Mess } = require('../utils/db')


const messup = ({ content, nackname, date, link, headimg }) => {
    const mess = new Mess({
        content, nackname, date, link, headimg
    })
    return mess.save()
}
const messlist = () => {
    return Mess.find().sort({ _id: -1 })
}

const remove = (id) => {
    return Mess.deleteOne({ _id: id })
}
exports.messup = messup
exports.messlist = messlist
exports.remove = remove