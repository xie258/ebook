import Vuex from 'vuex'
import Vue from 'vue'
import BookContent from './bookContent/bookContent.js'
import User from './module/user.js'
//引入Vuex
Vue.use(Vuex)


const store = new Vuex.Store({
    modules: {
        BookContent,
        User,
    }
})


export default store;