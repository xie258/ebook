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

export function doGetPaperByCreator(creator) {
    const data = {
        creator
    };
    // data = qs.stringify(data)
    return request({
        url: 'api/paper/get_by_creator',
        method: 'post',
        data,
    })
}

export function doGetPaperById(paperId) {
    const data = {
        paperId
    };
    // data = qs.stringify(data)
    return request({
        url: 'api/paper/get_by_id',
        method: 'post',
        data,
    })
}

export function doSubmitPaper(data) {
    // data = qs.stringify(data)
    return request({
        url: 'api/paper/submit',
        method: 'post',
        data,
    })
}

export function doGetScorePaper(data) {
    return request({
        url: 'api/paper/get_score_paper',
        method: "post",
        data,
    })
}

export function doGetScorePaperOne(data) {
    return request({
        url: 'api/paper/get_score_paper_one',
        method: "post",
        data,
    })
}

export function doScorePaper(data) {
    return request({
        url: 'api/paper/score_paper_one',
        method: "post",
        data,
    })
}

export function doPublishPaper(data) {
    return request({
        url: 'api/paper/publish_class',
        method: "post",
        data,
    })
}

export function doGetStudentPaper(data) {
    return request({
        url: 'api/paper/student_paper',
        method: "post",
        data,
    })
}

export function doDoStudentPaper(data) {
    return request({
        url: 'api/paper/do_paper_one',
        method: "post",
        data,
    })
}