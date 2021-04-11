import request from '@/utils/request'
import qs from 'qs'

export function doLogin(username, password) {
    let data = {
        username,
        password,
    };
    data = qs.stringify(data)
    return request({
        url: 'api/login',
        method: 'post',
        data,
    })
}