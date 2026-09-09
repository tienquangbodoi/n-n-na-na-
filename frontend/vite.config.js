import { defineConfig } from 'vite'
import vue from '@vitejs/plugin-vue'

export default defineConfig({
  plugins: [vue()],
  server: {
    port: 5173,
    proxy: {
      '/api': {
        target: 'https://quan-ly-chi-tieu-63np.onrender.com',
        changeOrigin: true,
        secure: false,
      }
    }
  }
})
