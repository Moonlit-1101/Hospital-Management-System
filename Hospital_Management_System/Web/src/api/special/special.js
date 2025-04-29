import request from '@/utils/request'

// 查询项目申请记录列表
export function listSpecial(query) {
  return request({
    url: '/special/special/list',
    method: 'get',
    params: query
  })
}
// 查询项目申请记录列表
export function managerListSpecial(query) {
  return request({
    url: '/special/special/managerList',
    method: 'get',
    params: query
  })
}

// 查询项目申请记录详细
export function getSpecial(requestId) {
  return request({
    url: '/special/special/' + requestId,
    method: 'get'
  })
}

// 新增项目申请记录
export function addSpecial(data) {
  return request({
    url: '/special/special',
    method: 'post',
    data: data
  })
}

// 修改项目申请记录
export function updateSpecial(data) {
  return request({
    url: '/special/special',
    method: 'put',
    data: data
  })
}

// 删除项目申请记录
export function delSpecial(requestId) {
  return request({
    url: '/special/special/' + requestId,
    method: 'delete'
  })
}
