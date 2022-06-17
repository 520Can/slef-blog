import Vue from 'vue'
import VueRouter from 'vue-router'
import HomeView from '../views/HomeView.vue'

Vue.use(VueRouter)

const routes = [
  {
    path: '/',
    name: 'home',
    component: HomeView,
    redirect: '/selfinfo'
  },
  {
    path: '/home',
    name: 'Home',
    component: HomeView,
    // component: () => import('@/views/HomeView.vue')
    redirect: '/selfinfo',
    children: [
      {
        path: '/selfinfo',
        name: 'Selfinfo',
        component: () => import('../components/usermange/SelfInfo.vue'),
      },
      {
        path: '/articleinfo',
        name: 'Articleinfo',
        component: () => import('../components/usermange/ArticleInfo.vue'),
      },
      {
        path: '/infoinfo',
        name: 'Infoinfo',
        component: () => import('../components/usermange/InfoInfo.vue'),
      },
      {
        path: '/otherinfo',
        name: 'Otherinfo',
        component: () => import('../components/usermange/OtherInfo.vue'),
      },
      {
        path: '/comment',
        name: 'Comment',
        component: () => import('../components/usermange/Comment.vue'),
      }, {
        path: '/usermess',
        name: 'Usermess',
        component: () => import('../components/usermange/Usermess.vue'),
      }, {
        path: '/setting',
        name: 'Setting',
        component: () => import('../components/usermange/Setting.vue'),
      }, {
        path: '/manager',
        name: 'Manager',
        component: () => import('../components/usermange/Manager.vue'),
      },
      // {
      //   path: '/otherinfo',
      //   name: 'Otherinfo',
      //   component: () => import('../components/usermange/OtherInfo.vue'),
      // },
      // {
      //   path: '/comment',
      //   name: 'Comment',
      //   component: () => import('../components/usermange/Comment.vue'),
      // },
    ]
  },
  {
    path: '/login',
    name: 'Login',
    component: HomeView,
    component: () => import('@/views/LoginView.vue')
    // redirect: '/'
  },
  {
    path: '/about',
    name: 'About',
    // route level code-splitting
    // this generates a separate chunk (about.[hash].js) for this route
    // which is lazy-loaded when the route is visited.
    component: function () {
      return import(/* webpackChunkName: "about" */ '../views/AboutView.vue')
    }
  }
]

const router = new VueRouter({
  mode: 'history',
  base: process.env.BASE_URL,
  routes
})

export default router
