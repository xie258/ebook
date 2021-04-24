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
import MathGeogebraBook from '@/view/booksLib/MathGeogebraBook'
import createPaper from '@/view/paper/createPaper'
import managePaper from '@/view/paper/managePaper'
import Login from '@/view/login/login'
import classmanage from '@/view/class/class'
import BBS from '@/view/bbs/bbs'
import Register from '@/view/login/register'
import joinClass from '@/view/class/joinClass'
import manageClass from '@/view/class/manageClass'
import checkNotice from '@/view/class/checkNotice'
import showPaper from '@/view/paper/showPaper'
import showBbs from '@/view/bbs/showBbs'
import searchEbook from '@/view/searchBook/searchEbook'
import showEbook from '@/view/searchBook/showEbook'

Vue.use(Router)

export default new Router({
    routes: [{
            path: '/',
            name: 'Home',
            component: Login,
        }, {
            path: '/helloWorld',
            name: 'HelloWorld',
            component: HelloWorld
        }, {
            path: '/login',
            component: Login,
        },
        {
            path: '/register',
            component: Register,
        },
        {
            path: '/home',
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
                }, {
                    path: '/mathGeogebraBook',
                    component: MathGeogebraBook,
                }, {
                    path: '/createPaper',
                    component: createPaper,
                }, {
                    path: '/managePaper',
                    component: managePaper,
                }, {
                    path: '/class',
                    component: classmanage,
                }, {
                    path: '/bbs',
                    component: BBS,
                }, {
                    path: '/joinClass',
                    component: joinClass,
                }, {
                    path: '/manageClass',
                    component: manageClass,
                }, {
                    path: '/checkNotice',
                    component: checkNotice,
                }, {
                    path: '/showPaper',
                    component: showPaper,
                }, {
                    path: '/showBbs',
                    component: showBbs,
                }, {
                    path: '/searchEbook',
                    component: searchEbook,
                }, {
                    path: '/showEbook',
                    component: showEbook
                }
            ]
        }
    ]
})