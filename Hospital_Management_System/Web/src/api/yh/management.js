import request from '@/utils/request'

// 查询管理制度列表
export function listManagement(query) {
  return request({
    url: '/yh/management/list',
    method: 'get',
    params: query
  })
}

// 查询管理制度详细
export function getManagement(id) {
  return request({
    url: '/yh/management/' + id,
    method: 'get'
  })
}

// 新增管理制度
export function addManagement(data) {
  return request({
    url: '/yh/management',
    method: 'post',
    data: data
  })
}

// 修改管理制度
export function updateManagement(data) {
  return request({
    url: '/yh/management',
    method: 'put',
    data: data
  })
}

// 删除管理制度
export function delManagement(id) {
  return request({
    url: '/yh/management/' + id,
    method: 'delete'
  })
}
