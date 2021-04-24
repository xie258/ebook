import request from '@/utils/request'
import qs from 'qs'

export function doGetbookList() {
    // data = qs.stringify(data)
    return request({
        url: 'api/ebook/get_book_list',
        method: 'post',
    })
}