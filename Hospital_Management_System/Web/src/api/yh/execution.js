import request from '@/utils/request'

// 查询操作规程列表
export function listExecution(query) {
  return request({
    url: '/yh/execution/list',
    method: 'get',
    params: query
  })
}

// 查询操作规程详细
export function getExecution(id) {
  return request({
    url: '/yh/execution/' + id,
    method: 'get'
  })
}

// 新增操作规程
export function addExecution(data) {
  return request({
    url: '/yh/execution',
    method: 'post',
    data: data
  })
}

// 修改操作规程
export function updateExecution(data) {
  return request({
    url: '/yh/execution',
    method: 'put',
    data: data
  })
}

// 删除操作规程
export function delExecution(id) {
  return request({
    url: '/yh/execution/' + id,
    method: 'delete'
  })
}
