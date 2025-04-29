import request from '@/utils/request'

// 查询需要我评价列表
export function listSpecial_evaluation(query) {
  return request({
    url: '/special/special_evaluation/list',
    method: 'get',
    params: query
  })
}
// 查询我被评价的列表
export function evaluationListSpecial_evaluation(query) {
  return request({
    url: '/special/special_evaluation/evaluationList',
    method: 'get',
    params: query
  })
}
// 插入我的评价列表
export function insertListSpecial_evaluation(query) {
  return request({
    url: '/special/special_evaluation/insertList',
    method: 'get',
    params: query
  })
}

// 查询我的评价详细
export function getSpecial_evaluation(id) {
  return request({
    url: '/special/special_evaluation/' + id,
    method: 'get'
  })
}

// 新增我的评价
export function addSpecial_evaluation(data) {
  return request({
    url: '/special/special_evaluation',
    method: 'post',
    data: data
  })
}

// 修改我的评价
export function updateSpecial_evaluation(data) {
  return request({
    url: '/special/special_evaluation',
    method: 'put',
    data: data
  })
}

// 删除我的评价
export function delSpecial_evaluation(id) {
  return request({
    url: '/special/special_evaluation/' + id,
    method: 'delete'
  })
}
