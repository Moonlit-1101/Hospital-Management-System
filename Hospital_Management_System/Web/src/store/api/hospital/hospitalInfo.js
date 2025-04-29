import request from '@/utils/request'

// 查询就诊人员列表
export function listHospitalInfo(query) {
  return request({
    url: '/hospital/hospitalInfo/list',
    method: 'get',
    params: query
  })
}

// 查询就诊人员详细
export function getHospitalInfo(patientId) {
  return request({
    url: '/hospital/hospitalInfo/' + patientId,
    method: 'get'
  })
}

// 新增就诊人员
export function addHospitalInfo(data) {
  return request({
    url: '/hospital/hospitalInfo',
    method: 'post',
    data: data
  })
}

// 修改就诊人员
export function updateHospitalInfo(data) {
  return request({
    url: '/hospital/hospitalInfo',
    method: 'put',
    data: data
  })
}

// 删除就诊人员
export function delHospitalInfo(patientId) {
  return request({
    url: '/hospital/hospitalInfo/' + patientId,
    method: 'delete'
  })
}
