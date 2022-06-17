const { Comms } = require('../utils/db')

const commup = ({ username, articleTitle, content, date, status }) => {
    const comms = new Comms({
        username, articleTitle, content, date, status
    })
    return comms.save()
}
const findList = () => {
    return Comms.find().sort({ _id: -1 })
}

const delone = (id) => {
    return Comms.deleteOne({ _id: id })
}

const commput = (id, status) => {

    return Comms.findOneAndUpdate({ _id: id }, { status: status })
}
exports.commup = commup
exports.findList = findList
exports.delone = delone
exports.commput = commput