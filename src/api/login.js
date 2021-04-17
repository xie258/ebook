import request from '@/utils/request'
import qs from 'qs'

export function doLogin(form) {
    let data = {
        username: form.username,
        password: form.password,
        types: form.types
    };
    // data = qs.stringify(data)
    return request({
        url: 'api/login',
        method: 'post',
        data,
    })
}