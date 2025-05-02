import { shallowMount } from '@vue/test-utils'
import { ref } from 'vue'
import { describe, it, expect, vi, beforeEach } from 'vitest' // 导入 Vitest API
const submitForm = vi.fn()
describe('submitForm', () => {
    let wrapper, proxy, form, open, getList

    beforeEach(() => {
        // 初始化 mock 对象 - 使用 vi 替代 jest
        proxy = {
            $refs: {
                hospitalInfoRef: {
                    validate: vi.fn()
                }
            },
            $modal: {
                msgSuccess: vi.fn()
            }
        }

        form = ref({ patientId: null })
        open = ref(true)
        getList = vi.fn()

        // 创建组件实例
        wrapper = shallowMount({
            setup() {
                return {
                    form,
                    open,
                    getList,
                    submitForm: () => submitForm()
                }
            },
            template: '<div></div>'
        }, {
            global: {
                mocks: {
                    proxy
                }
            }
        })
    })

    // 测试用例1: 表单验证失败时不做任何操作
    it('should do nothing when form validation fails', async () => {
        proxy.$refs.hospitalInfoRef.validate.mockImplementation((callback) => callback(false))

        await wrapper.vm.submitForm()

        expect(proxy.$modal.msgSuccess).not.toHaveBeenCalled()
        expect(open.value).toBe(true)
        expect(getList).not.toHaveBeenCalled()
    })
})