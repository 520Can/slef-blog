const { Articles } = require('../utils/db')


const articleup = ({ title, author, sort, time, article }) => {
    const articles = new Articles({
        title, author, sort, time, article
    })
    return articles.save()
}

const findList = () => {
    return Articles.find().sort({ _id: -1 })
}

const remove = id => {
    return Articles.deleteOne({ _id: id })
}

exports.articleup = articleup
exports.findList = findList
exports.remove = remove