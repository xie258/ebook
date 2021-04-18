import request from '@/utils/request'
import qs from 'qs'

export function doCreateClass(form) {
    const data = {
        teacherName: form.teacherName,
        className: form.className,
        description: form.description
    };
    // data = qs.stringify(data)
    return request({
        url: 'api/class/create',
        method: 'post',
        data,
    })
}

export async function doGetClass(teacherName) {
    const data = {
        teacherName,
    };
    // data = qs.stringify(data)
    return request({
        url: 'api/class/get',
        method: 'post',
        data,
    })
}

export async function doDeleteClass(className) {
    const data = {
        className,
    };
    // data = qs.stringify(data)
    return request({
        url: 'api/class/delete',
        method: 'post',
        data,
    })
}

export async function doUpdateClass(classInfo) {
    const data = {
        className: classInfo.className,
        studentName: classInfo.studentName,
        status: classInfo.status
    };
    // data = qs.stringify(data)
    return request({
        url: 'api/class/join',
        method: 'post',
        data,
    })
}

export async function doGetJoinClass(studentName) {
    const data = {
        studentName
    };
    // data = qs.stringify(data)
    return request({
        url: 'api/class/get_join_list',
        method: 'post',
        data,
    })
}

export async function doGetOneClass(className) {
    const data = {
        className
    };
    // data = qs.stringify(data)
    return request({
        url: 'api/class/get_class_one',
        method: 'post',
        data,
    })
}

export async function addClassNotification(noticeInfo) {
    const data = {
        className: noticeInfo.className,
        title: noticeInfo.title,
        content: noticeInfo.content,
    };
    // data = qs.stringify(data)
    console.log("data")
    return request({
        url: 'api/class/notificatoin/add',
        method: 'post',
        data,
    })
}