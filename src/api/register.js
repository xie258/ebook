import request from '@/utils/request'
import qs from 'qs'

export function doRegister(form) {
    let data = {
        username: form.username,
        password: form.password,
        types: form.types,
    };
    // data = qs.stringify(data)
    return request({
        url: 'api/register',
        method: 'post',
        data,
    })
}