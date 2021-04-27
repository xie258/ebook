import axios from 'axios'
import router from '../router/index.js'

// const baseUrl = 'http://localhost:5000/';
const baseUrl = '';

const service = axios.create({
    // baseURL: baseUrl, // api 的 base_url
    timeout: 50000 // request timeout
})

// 请求拦截  设置统一header
service.interceptors.request.use(
    config => {
        // 加载
        console.log(localStorage)
        if (localStorage.token) {
            config.headers.Authorization = localStorage.token
        }
        return config
    },
    error => {
        return Promise.reject(error)
    }
)

// 响应拦截  401 token过期处理
service.interceptors.response.use(
    response => {
        return response
    },
    error => {
        // 错误提醒
        console.log(error.response)
        const { status } = error.response
        if (status === 401) {
            // 清除token
            localStorage.removeItem('eleToken')
            console.log("toekn")
                // 页面跳转
            router.push('/login')
        }

        return Promise.reject(error.response)
    }
)

export default service;