import Vuex from 'vuex'
import Vue from 'vue'
import BookContent from './bookContent/bookContent.js'

//引入Vuex
Vue.use(Vuex)


const store = new Vuex.Store({
    modules:{
        BookContent,
    }
})


export default store;