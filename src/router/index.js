import Vue from 'vue'
import Router from 'vue-router'
import HelloWorld from '@/components/HelloWorld'
import Home from '@/home/Home'
import EditBook from '@/view/editBook/EditContent'
import BrowseBook from '@/view/browseBook/BrowseBook'
import TestRange from '@/view/test/TestRange'
import TestGeoGebra from '@/view/test/TestGeoGebra'
import SearchBook from '@/view/searchBook/SearchBook'
import MathBook from '@/view/browseBook/MathBook'
import MathSevenGradeBook from '@/view/booksLib/MathSevenGradeBook'
import BiologySevenGradeBook from '@/view/booksLib/BiologySevenGradeBook'
import ChineseSevenGradeBook from '@/view/booksLib/ChineseSevenGradeBook'

Vue.use(Router)

export default new Router({
    routes: [{
        path: '/',
        name: 'Home',
        component: Home,
        children: [{
                path: '',
                component: EditBook
            },
            {
                path: '/browseBook',
                component: BrowseBook
            },
            {
                path: '/testRange',
                component: TestRange
            },
            {
                path: '/testGeoGebra',
                component: TestGeoGebra
            }, {
                path: '/searchBook',
                component: SearchBook,
            }, {
                path: '/mathBook',
                component: MathBook,
            }, {
                path: '/mathSevenGradeBook',
                component: MathSevenGradeBook,
            }, {
                path: '/chineseSevenGradeBook',
                component: ChineseSevenGradeBook,
            }, {
                path: '/biologySevenGradeBook',
                component: BiologySevenGradeBook,
            }
        ]
    }, {
        path: '/helloWorld',
        name: 'HelloWorld',
        component: HelloWorld
    }]
})