//存储数据
const state = {
    username: ""
}

//异步操作
const actions = {

}

//包装数据
const getters = {
    getUsername(state) {
        return state.username;
    }
}

//操作state方法
const mutations = {
    setUsername(state, val) {
        state.username = val
    }
}

export default {
    state,
    actions,
    getters,
    mutations
}