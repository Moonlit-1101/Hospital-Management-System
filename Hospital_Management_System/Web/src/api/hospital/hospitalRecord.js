import request from '@/utils/request'

// 查询护理日志列表
export function listHospitalRecord(query) {
  return request({
    url: '/hospital/hospitalRecord/list',
    method: 'get',
    params: query
  })
}

// 查询护理日志详细
export function getHospitalRecord(recordId) {
  return request({
    url: '/hospital/hospitalRecord/' + recordId,
    method: 'get'
  })
}

// 新增护理日志
export function addHospitalRecord(data) {
  return request({
    url: '/hospital/hospitalRecord',
    method: 'post',
    data: data
  })
}

// 修改护理日志
export function updateHospitalRecord(data) {
  return request({
    url: '/hospital/hospitalRecord',
    method: 'put',
    data: data
  })
}

// 删除护理日志
export function delHospitalRecord(recordId) {
  return request({
    url: '/hospital/hospitalRecord/' + recordId,
    method: 'delete'
  })
}
