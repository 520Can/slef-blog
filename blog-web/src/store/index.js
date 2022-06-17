import { createStore } from 'vuex'

export default createStore({
  state: {
    // 刷新组件
    refresh: 1,
    toast: false,
    passlist: [],
    //隐藏和展示留言界面
    mess: false,
    changeback: true,
    // 当前文章标题
    currentTitle: ''
  },
  mutations: {
  },
  actions: {
  },
  modules: {
  }
})
