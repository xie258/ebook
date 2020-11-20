
//存储数据
const state = {
    content:""
}

//异步操作
const actions = {

}

//包装数据
const getters = {
    getContent(state){
        return state.content;
    }
}

//操作state方法
const mutations = {
    setContent(state,val) {
        state.content=val
    }
}

export default {
    state,
    actions,
    getters,
    mutations
}