import request from '@/utils/request'
import qs from 'qs'

export function doGetQuestionAll() {
    // data = qs.stringify(data)
    return request({
        url: 'api/question/get_all',
        method: 'post',
    })
}

export function doAddQuestion(data) {
    // data = qs.stringify(data)
    return request({
        url: 'api/question/add',
        method: 'post',
        data
    })
}

export function doDeleteQuestion(data) {
    // data = qs.stringify(data)
    return request({
        url: 'api/question/delete_by_id',
        method: 'post',
        data
    })
}