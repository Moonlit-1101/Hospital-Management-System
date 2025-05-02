import { mount } from '@vue/test-utils'
import { ref } from 'vue'
import { expect, vi } from 'vitest' // 或使用 jest

describe('handleResetPwd', () => {
    let wrapper
    let proxy
    let resetUserPwdMock

    beforeEach(() => {
        resetUserPwdMock = vi.fn(() => Promise.resolve({}))

        proxy = {
            $prompt: vi.fn(() => Promise.resolve({ value: 'newPassword123' })),
            $modal: {
                msgSuccess: vi.fn()
            }
        }

        wrapper = mount({
            template: '<div></div>',
            setup() {
                const handleResetPwd = (row) => {
                    proxy.$prompt('请输入"' + row.userName + '"的新密码', "提示", {
                        confirmButtonText: "确定",
                        cancelButtonText: "取消",
                        closeOnClickModal: false,
                        inputPattern: /^.{5,20}$/,
                        inputErrorMessage: "人员密码长度必须介于 5 和 20 之间",
                        inputValidator: (value) => {
                            if (/<|>|"|'|\||\\/.test(value)) {
                                return "不能包含非法字符：< > \" ' \\ |"
                            }
                        },
                    }).then(({ value }) => {
                        resetUserPwdMock(row.userId, value).then(response => {
                            proxy.$modal.msgSuccess("修改成功，新密码是：" + value);
                        });
                    }).catch(() => {});
                }

                return {
                    handleResetPwd
                }
            }
        })
    })

    afterEach(() => {
        vi.restoreAllMocks()
    })

    it('应该调用 $prompt 显示密码输入对话框', async () => {
        const row = { userId: 1, userName: 'testUser' }
        await wrapper.vm.handleResetPwd(row)

        expect(proxy.$prompt).toHaveBeenCalledTimes(1)
        expect(proxy.$prompt).toHaveBeenCalledWith(
            '请输入"testUser"的新密码',
            '提示',
            expect.objectContaining({
                confirmButtonText: '确定',
                cancelButtonText: '取消'
            })
        )
    })

    it('当输入有效密码时应该调用 resetUserPwd 并显示成功消息', async () => {
        const row = { userId: 1, userName: 'testUser' }
        await wrapper.vm.handleResetPwd(row)

        // 模拟 $prompt 解析
        await proxy.$prompt.mock.results[0].value

        expect(resetUserPwdMock).toHaveBeenCalledWith(1, 'newPassword123')
        await new Promise(resolve => setTimeout(resolve, 0)) // 等待异步完成
        expect(proxy.$modal.msgSuccess).toHaveBeenCalledWith('修改成功，新密码是：newPassword123')
    })

    it('应该验证密码长度在5-20个字符之间', async () => {
        const row = { userId: 1, userName: 'testUser' }
        // 手动触发 handleResetPwd 方法，确保 $prompt 被调用
        await wrapper.vm.handleResetPwd(row)
        const options = proxy.$prompt.mock.calls[0][2]

        // 测试密码长度验证
        expect(options.inputPattern.test('1234')).toBe(false) // 太短
        expect(options.inputPattern.test('12345')).toBe(true) // 下限
        expect(options.inputPattern.test('12345678901234567890')).toBe(true) // 上限
        expect(options.inputPattern.test('123456789012345678901')).toBe(false) // 太长
    })


    it('应该拒绝包含非法字符的密码', async () => {
        const row = { userId: 1, userName: 'testUser' }
        // 调用 handleResetPwd 方法触发 $prompt 调用
        await wrapper.vm.handleResetPwd(row);
        const options = proxy.$prompt.mock.calls[0][2]

        // 测试非法字符验证
        expect(options.inputValidator('password<')).toBe('不能包含非法字符：< > " \' \\ |')
        expect(options.inputValidator('password>')).toBe('不能包含非法字符：< > " \' \\ |')
        expect(options.inputValidator('password"')).toBe('不能包含非法字符：< > " \' \\ |')
        expect(options.inputValidator("password'")).toBe('不能包含非法字符：< > " \' \\ |')
        expect(options.inputValidator('password\\')).toBe('不能包含非法字符：< > " \' \\ |')
        expect(options.inputValidator('password|')).toBe('不能包含非法字符：< > " \' \\ |')
        expect(options.inputValidator('validPassword')).toBeUndefined() // 有效密码
    })


    it('当用户取消操作时不应该调用 resetUserPwd', async () => {
        proxy.$prompt.mockImplementationOnce(() => Promise.reject())
        const row = { userId: 1, userName: 'testUser' }

        await wrapper.vm.handleResetPwd(row)

        expect(resetUserPwdMock).not.toHaveBeenCalled()
        expect(proxy.$modal.msgSuccess).not.toHaveBeenCalled()
    })
})