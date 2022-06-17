const bcrypt = require('bcrypt')


//通过bcrypt密码加密
const hash = (myPlaintextPassword) => {
    return new Promise((resolve, reject) => {
        bcrypt.hash(myPlaintextPassword, 10, function (err, hash) {
            if (err) {
                reject(err)
            }
            resolve(hash)
        })
    })
    // bcrypt.hash(myPlaintextPassword, 10, function (err, hash) {
    //     // console.log(myPlaintextPassword, hash);
    //     myPlaintextPassword = hash
    // })
}

exports.hash = hash