import request from '@/utils/request'

// 查询药方管理列表
export function listHospitalManagement(query) {
  return request({
    url: '/hospital/hospitalManagement/list',
    method: 'get',
    params: query
  })
}

// 查询药方管理详细
export function getHospitalManagement(prescriptionId) {
  return request({
    url: '/hospital/hospitalManagement/' + prescriptionId,
    method: 'get'
  })
}

// 新增药方管理
export function addHospitalManagement(data) {
  return request({
    url: '/hospital/hospitalManagement',
    method: 'post',
    data: data
  })
}

// 修改药方管理
export function updateHospitalManagement(data) {
  return request({
    url: '/hospital/hospitalManagement',
    method: 'put',
    data: data
  })
}

// 删除药方管理
export function delHospitalManagement(prescriptionId) {
  return request({
    url: '/hospital/hospitalManagement/' + prescriptionId,
    method: 'delete'
  })
}
