import axios from '@/libs/api.request'
import Qs from 'qs'

export const humanRecharge = (params) => {
  return axios.request({
    url: '/user-recharge/admin/human',
    method: 'POST',
    data: Qs.stringify(params)
  })
}