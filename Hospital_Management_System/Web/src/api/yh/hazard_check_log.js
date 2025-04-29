import request from '@/utils/request'

// 查询隐患查询列表
export function listHazard_check_log(query) {
  return request({
    url: '/yh/hazard_check_log/list',
    method: 'get',
    params: query
  })
}

// 查询隐患查询详细
export function getHazard_check_log(id) {
  return request({
    url: '/yh/hazard_check_log/' + id,
    method: 'get'
  })
}

// 新增隐患查询
export function addHazard_check_log(data) {
  return request({
    url: '/yh/hazard_check_log',
    method: 'post',
    data: data
  })
}

// 修改隐患查询
export function updateHazard_check_log(data) {
  return request({
    url: '/yh/hazard_check_log',
    method: 'put',
    data: data
  })
}

// 删除隐患查询
export function delHazard_check_log(id) {
  return request({
    url: '/yh/hazard_check_log/' + id,
    method: 'delete'
  })
}
