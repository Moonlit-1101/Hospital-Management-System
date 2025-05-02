import { ref } from 'vue';
import { mount } from '@vue/test-utils';
import { describe, it, expect, vi, beforeEach } from 'vitest';

// 模拟依赖
const mockModal = {
    confirm: vi.fn().mockResolvedValue(undefined),
    msgSuccess: vi.fn()
};

const mockProxy = {
    $modal: mockModal
};

const mockDelHospitalRecord = vi.fn().mockResolvedValue({});
const mockGetList = vi.fn();

describe('handleDelete', () => {
    let wrapper;
    let ids;

    beforeEach(() => {
        // 重置模拟函数
        vi.resetAllMocks();

        ids = ref([]);
        // 使用 mount 挂载组件
        wrapper = mount({
            setup() {
                const handleDelete = async (row) => {
                    const id = row?.recordId || ids.value.join(',');
                    const message = row?.recordId
                        ? `是否确认删除护理日志编号为"${row.recordId}"的数据项？`
                        : `是否确认删除护理日志编号为"${ids.value.join(',')}"的数据项？`;

                    try {
                        await mockModal.confirm(message);
                        if (row?.recordId) {
                            await mockDelHospitalRecord(row.recordId);
                        } else {
                            await Promise.all(ids.value.map(id => mockDelHospitalRecord(id)));
                        }
                        mockModal.msgSuccess('删除成功');
                        mockGetList();
                    } catch (error) {
                        // 用户取消操作，不做任何处理
                    }
                };

                return {
                    proxy: mockProxy,
                    ids,
                    getList: mockGetList,
                    handleDelete
                };
            },
            template: '<div></div>' // 提供一个简单模板
        }, {
            global: {
                mocks: {
                    proxy: mockProxy
                }
            }
        });
    });

    it('应该显示带正确消息的确认对话框 - 单条删除', async () => {
        const row = { recordId: '123' };
        await wrapper.vm.handleDelete(row);

        expect(mockModal.confirm).toHaveBeenCalledWith(
            '是否确认删除护理日志编号为"123"的数据项？'
        );
    });
});