import request from '@/utils/request'

// 查询项目信息列表
export function listSpecial_projects(query) {
  return request({
    url: '/special/special_projects/list',
    method: 'get',
    params: query
  })
}
// 查询专业内项目信息列表
export function deptlistSpecial_projects(query) {
  return request({
    url: '/special/special_projects/deptList',
    method: 'get',
    params: query
  })
}
// 查询我需要更新的進展的項目专业内项目信息列表
export function melistSpecial_projects(query) {
  return request({
    url: '/special/special_projects/meList',
    method: 'get',
    params: query
  })
}

// 查询项目信息详细
export function getSpecial_projects(projectId) {
  return request({
    url: '/special/special_projects/' + projectId,
    method: 'get'
  })
}

// 新增项目信息
export function addSpecial_projects(data) {
  return request({
    url: '/special/special_projects',
    method: 'post',
    data: data
  })
}

// 修改项目信息
export function updateSpecial_projects(data) {
  return request({
    url: '/special/special_projects',
    method: 'put',
    data: data
  })
}

// 删除项目信息
export function delSpecial_projects(projectId) {
  return request({
    url: '/special/special_projects/' + projectId,
    method: 'delete'
  })
}
