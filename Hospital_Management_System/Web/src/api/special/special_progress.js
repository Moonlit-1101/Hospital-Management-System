import request from '@/utils/request'

// 查询项目任务进展列表
export function listSpecial_progress(query) {
  return request({
    url: '/special/special_progress/list',
    method: 'get',
    params: query
  })
}
// 查询项目任务进展列表
export function meListSpecial_progress(query) {
  return request({
    url: '/special/special_progress/meList',
    method: 'get',
    params: query
  })
}

// 查询项目任务进展详细
export function getSpecial_progress(progressId) {
  return request({
    url: '/special/special_progress/' + progressId,
    method: 'get'
  })
}

// 新增项目任务进展
export function addSpecial_progress(data) {
  return request({
    url: '/special/special_progress',
    method: 'post',
    data: data
  })
}

// 修改项目任务进展
export function updateSpecial_progress(data) {
  return request({
    url: '/special/special_progress',
    method: 'put',
    data: data
  })
}

// 删除项目任务进展
export function delSpecial_progress(progressId) {
  return request({
    url: '/special/special_progress/' + progressId,
    method: 'delete'
  })
}
