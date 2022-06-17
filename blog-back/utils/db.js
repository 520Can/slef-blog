var mongoose = require('mongoose');
mongoose.connect('mongodb://localhost/blog-back',
    // {
    //     useNewUrlParser:true,
    //     useUnifiedTopology:true
    // }
);

var db = mongoose.connection;
db.on('error', console.error.bind(console, 'connection error:'));

// 构建管理员users的model
var usersSchema = mongoose.Schema({
    username: String,
    password: String,
    date: String,
    nackname: String,
    evaluate: String,
    graduate: String,
    phone: String,
    email: String
});
// 构建文章artcles的model
var articlesSchema = mongoose.Schema({
    title: String,
    author: String,
    sort: String,
    time: String,
    article: String
});
// 构建留言的model
var messSchema = mongoose.Schema({
    content: String,
    nackname: String,
    date: String,
    link: String,
    headimg: String
});
// 构建文章评论的model
var commsSchema = mongoose.Schema({
    username: String,
    articleTitle: String,
    content: String,
    date: String,
    status: Boolean
});


var Users = mongoose.model('users', usersSchema);
var Articles = mongoose.model('articles', articlesSchema)
var Mess = mongoose.model('mess', messSchema)
var Comms = mongoose.model('comms', commsSchema)

exports.Users = Users
exports.Articles = Articles
exports.Mess = Mess
exports.Comms = Comms
// var felyne = new Kitten({ name: 'Felyne' });

// felyne.save()