import { createRouter, createWebHistory } from 'vue-router'
import Home from '../views/Home.vue'

const routes = [
  {
    path: '/',
    name: 'Home',
    component: Home
  },
  {
    path: '/about',
    name: 'About',

    component: () => import('../components/About.vue')
  },
  {
    path: '/articles',
    name: 'Articles',
    component: () => import('../components/sub/Articles.vue')
  },
  {
    path: '/atriclescans',
    name: 'AtricleScans',
    component: () => import('../components/AtricleScans.vue')
  },
  {
    path: '/explore',
    name: 'Explore',
    component: () => import('../components/sub/Explore.vue'),
    redirect: '/styledesign',
    children: [{
      path: '/styledesign',
      name: 'styleDesign',
      component: () => import('../components/explore/StyleDesign.vue')
    },
    {
      path: '/dynamic',
      name: 'Dynamic',
      component: () => import('../components/explore/Dynamic.vue')
    }, {
      path: '/program',
      name: 'Program',
      component: () => import('../components/explore/Program.vue')
    },
    ]
  }
]

const router = createRouter({
  history: createWebHistory(process.env.BASE_URL),
  routes
})

export default router
