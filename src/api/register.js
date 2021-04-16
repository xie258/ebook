import request from '@/utils/request'
import qs from 'qs'

export function doRegister(username, password) {
    let data = {
        username,
        password,
    };
    // data = qs.stringify(data)
    return request({
        url: 'api/register',
        method: 'post',
        data,
    })
}