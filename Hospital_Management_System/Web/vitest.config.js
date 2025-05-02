import { defineConfig } from 'vitest/config'
import vue from '@vitejs/plugin-vue'

export default defineConfig({
    plugins: [vue()],
    test: {
        globals: true,      // 启用 describe/it 等全局 API
        environment: 'jsdom', // 测试 Vue 组件需要 DOM 环境
        coverage: {
            reporter: ['text', 'json', 'html'] // 覆盖率报告
        }
    }
})