import request from '@/utils/request'
import qs from 'qs'

export function doGetbookList() {
    // data = qs.stringify(data)
    return request({
        url: 'api/ebook/get_book_list',
        method: 'post',
    })
}

export function doSaveBook(data) {
    // data = qs.stringify(data)
    return request({
        url: 'api/ebook/save_book',
        method: 'post',
        data
    })
}

export function doLoadBook(data) {
    // data = qs.stringify(data)
    return request({
        url: 'api/ebook/load_book',
        method: 'post',
        data
    })
}

export function doSearchBookList(data) {
    // data = qs.stringify(data)
    return request({
        url: 'api/ebook/searchBook',
        method: 'post',
        data
    })
}