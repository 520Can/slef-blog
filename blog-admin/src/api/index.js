import axios from 'axios'

const baseURL = 'http://localhost:3000'


// 文章评论功能
// export function commupAPI(content, nackname, date, link, headimg) {
//     return axios.post(`${baseURL}/api/comm`, { content, nackname, date, link, headimg })
// }
//文章状态修改
export function commputAPI(id, status) {
    return axios.put(`${baseURL}/api/comm`, { id, status })
}
// 评论列表
export function commlistAPI() {
    return axios.get(`${baseURL}/api/comm`)
}

// 评论删除
export function commdelAPI(id) {
    return axios.delete(`${baseURL}/api/comm`, { id })
}

// 用户留言功能
// 用户留言
// export function messupAPI(content, nackname, date, link, headimg) {
//     return axios.post(`${baseURL}/api/mess`, { content, nackname, date, link, headimg })
// }
// 留言列表
export function messlistAPI() {
    return axios.get(`${baseURL}/api/mess`)
}

// 留言删除
export function messdelAPI(id) {
    return axios.delete(`${baseURL}/api/mess`, { data: { id } })
}



//文章功能
// 文章添加
export function articleupAPI(title, author, sort, time, article) {
    return axios.post(`${baseURL}/api/articles`, { title, author, sort, time, article })
}
// 文章列表
export function articlelistAPI() {
    return axios.get(`${baseURL}/api/articles`)
}

// 文章删除
export function articledelAPI(id) {
    return axios.delete(`${baseURL}/api/articles`, { data: { id } })
}



//已完成管理员
//管理员功能
//修改管理员信息
export function userputAPI(id, nackname, evaluate, graduate, phone, email) {
    return axios.post(`${baseURL}/api/users`, { id, nackname, evaluate, graduate, phone, email })
}
//管理员添加
export function usersignupAPI(username, password, date, nackname, evaluate, graduate, phone, email) {
    return axios.post(`${baseURL}/api/users`, { username, password, date, nackname, evaluate, graduate, phone, email })
}
//管理员列表
export function userlistAPI() {
    return axios.get(`${baseURL}/api/users`)
}
//删除管理员
export function userdelAPI(id) {
    return axios.delete(`${baseURL}/api/users`, { data: { id } })
}

//管理员登陆
export function userLoginAPI(username, password) {
    return axios.post(`${baseURL}/api/users/userlogin`, { username, password })
}
