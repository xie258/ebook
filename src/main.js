// The Vue build version to load with the `import` command
// (runtime-only or standalone) has been set in webpack.base.conf with an alias.
import Vue from 'vue'
import App from './App'
import router from './router'
import store from './store'
import Antd from 'ant-design-vue'
import 'ant-design-vue/dist/antd.css'

import VueQuillEditor from 'vue-quill-editor'
import 'quill/dist/quill.core.css'
import 'quill/dist/quill.snow.css'
import 'quill/dist/quill.bubble.css'

import Contextmenu from 'vue-contextmenujs'


import rangy from 'rangy'
import 'rangy/lib/rangy-classapplier.js'
import 'rangy/lib/rangy-core.js'
import 'rangy/lib/rangy-highlighter.js'
import 'rangy/lib/rangy-selectionsaverestore.js'
import 'rangy/lib/rangy-serializer.js'
import 'rangy/lib/rangy-textrange.js'


// import {GGBPool,GGBPlotter} from 'node-geogebra'
// const GGB = require('node-geogebra');

// const puppeteer = require('puppeteer');
// import puppeteer from 'puppeteer'n

// const GGBPlotter = require("node-geogebra/dist/GGBPlotter").GGBPlotter;

// 引入GeoGebra 数学图形库
// Vue.use(GeoGebra)
// Vue.prototype.$GeoGebra=GeoGebra

//引入selection.range 库

Vue.prototype.$rangy = rangy

//引入右键菜单
Vue.use(Contextmenu)

//引入ant-design-vue
Vue.use(Antd)

//引入富文本quill
Vue.use(VueQuillEditor)



Vue.config.productionTip = false

/* eslint-disable no-new */
new Vue({
    el: '#app',
    router,
    store,
    components: { App },
    template: '<App/>'
})