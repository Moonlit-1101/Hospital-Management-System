import request from '@/utils/request'

// 查询全部就诊信息列表
export function listHospitalInfo(query) {
  return request({
    url: '/hospital/hospitalInfo/list',
    method: 'get',
    params: query
  })
}
// 查询图表就诊信息列表
export function getNumberListHospitalInfo(query) {
  return request({
    url: '/hospital/hospitalInfo/getNumber',
    method: 'get',
    params: query
  })
}
// 查询待就诊信息列表
export function diagnosisListHospitalInfo(query) {
  return request({
    url: '/hospital/hospitalInfo/diagnosisList',
    method: 'get',
    params: query
  })
}
// 查询住院信息列表
export function beListHospitalInfo(query) {
  return request({
    url: '/hospital/hospitalInfo/beList',
    method: 'get',
    params: query
  })
}
// 查询就诊信息详细
export function getHospitalInfo(patientId) {
  return request({
    url: '/hospital/hospitalInfo/' + patientId,
    method: 'get'
  })
}

// 新增就诊信息
export function addHospitalInfo(data) {
  return request({
    url: '/hospital/hospitalInfo',
    method: 'post',
    data: data
  })
}

// 修改就诊信息
export function updateHospitalInfo(data) {
  return request({
    url: '/hospital/hospitalInfo',
    method: 'put',
    data: data
  })
}

// 删除就诊信息
export function delHospitalInfo(patientId) {
  return request({
    url: '/hospital/hospitalInfo/' + patientId,
    method: 'delete'
  })
}
