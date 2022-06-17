import axios from "axios";

var baseURL = 'http://localhost:3000'

// export getArticleListAPI = () => axios.get(`${baseURL}/articles`)

// 添加留言
export function postMessAPI(content, nackname, date, link, headimg) {
    return axios.post(`${baseURL}/api/mess`, { content, nackname, date, link, headimg })
}


//添加评论
export function postCommentListAPI(username, articleTitle, content, date, status) {
    return axios.post(`${baseURL}/api/comm`, { username, articleTitle, content, date, status })
}

//获得评论列表
export function getCommentListAPI() {
    return axios.get(`${baseURL}/api/comm`)
}

//获得文章列表
export function getArticleListAPI() {
    return axios.get(`${baseURL}/api/articles`)
}