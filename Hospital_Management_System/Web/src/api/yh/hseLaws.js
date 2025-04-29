import request from '@/utils/request'

// 查询烟花法律法规列表
export function listHseLaws(query) {
  return request({
    url: '/yh/hseLaws/list',
    method: 'get',
    params: query
  })
}

// 查询烟花法律法规详细
export function getHseLaws(lawId) {
  return request({
    url: '/yh/hseLaws/' + lawId,
    method: 'get'
  })
}

// 新增烟花法律法规
export function addHseLaws(data) {
  return request({
    url: '/yh/hseLaws',
    method: 'post',
    data: data
  })
}

// 修改烟花法律法规
export function updateHseLaws(data) {
  return request({
    url: '/yh/hseLaws',
    method: 'put',
    data: data
  })
}

// 删除烟花法律法规
export function delHseLaws(lawId) {
  return request({
    url: '/yh/hseLaws/' + lawId,
    method: 'delete'
  })
}
