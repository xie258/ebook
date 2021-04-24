import request from '@/utils/request'
import qs from 'qs'

export function doCreateBbs(data) {
    // data = qs.stringify(data)
    return request({
        url: 'api/bbs/create_topic',
        method: 'post',
        data,
    })
}

export function doGetTopicAll() {
    // data = qs.stringify(data)
    return request({
        url: 'api/bbs/get_topic_all',
        method: 'post',
    })
}


export function doCreateBbsComment(data) {
    // data = qs.stringify(data)
    return request({
        url: 'api/bbs/create_bbs_comment',
        method: 'post',
        data
    })
}

export function doGetBbsCommentByTopic(data) {
    // data = qs.stringify(data)
    return request({
        url: 'api/bbs/get_bbs_comment_by_topic',
        method: 'post',
        data
    })
}