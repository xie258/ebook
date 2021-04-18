import request from '@/utils/request'
import qs from 'qs'

export function doCreatePaper(form) {
    const data = {
        paperName: form.paperName,
        paperDescription: form.paperDescription,
        selectContent: form.selectContent,
        askContent: form.askContent,
        creator: form.creator,
    };
    // data = qs.stringify(data)
    return request({
        url: 'api/paper/create',
        method: 'post',
        data,
    })
}