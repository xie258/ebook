import Vue from 'vue'
import Router from 'vue-router'
import HelloWorld from '@/components/HelloWorld'
import Home from '@/home/Home'
import EditBook from '@/view/editBook/EditContent'

Vue.use(Router)

export default new Router({
  routes: [
    {
      path: '/',
      name: 'Home',
      component: Home,
      children:[
        {
          path:'',
          component:EditBook
        }
      ]
    },{
      path: '/helloWorld',
      name: 'HelloWorld',
      component: HelloWorld
    }
  ]
})
