import request from '@/utils/request'

// 查询库存药品列表
export function listHospitalInventory(query) {
  return request({
    url: '/hospital/hospitalInventory/list',
    method: 'get',
    params: query
  })
}

// 查询库存药品详细
export function getHospitalInventory(drugId) {
  return request({
    url: '/hospital/hospitalInventory/' + drugId,
    method: 'get'
  })
}

// 新增库存药品
export function addHospitalInventory(data) {
  return request({
    url: '/hospital/hospitalInventory',
    method: 'post',
    data: data
  })
}

// 修改库存药品
export function updateHospitalInventory(data) {
  return request({
    url: '/hospital/hospitalInventory',
    method: 'put',
    data: data
  })
}
// 修改库存药品
export function quUpdateHospitalInventory(data) {
  return request({
    url: '/hospital/hospitalInventory/qu',
    method: 'put',
    data: data
  })
}
// 删除库存药品
export function delHospitalInventory(drugId) {
  return request({
    url: '/hospital/hospitalInventory/' + drugId,
    method: 'delete'
  })
}
