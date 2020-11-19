import Vue from 'vue'
import Router from 'vue-router'
import HelloWorld from '@/components/HelloWorld'
import Home from '@/home/Home'
import EditBook from '@/view/editBook/EditContent'
import BrowseBook from '@/view/browseBook/BrowseBook'

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
        },
        {
          path:'/browseBook',
          component:BrowseBook
        }
      ]
    },{
      path: '/helloWorld',
      name: 'HelloWorld',
      component: HelloWorld
    }
  ]
})
