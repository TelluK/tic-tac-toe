import { defineConfig } from 'vite'
import react from '@vitejs/plugin-react'

// https://vitejs.dev/config/
export default defineConfig({
  plugins: [react()],
  server: {
    // watch: {
    //   usePolling: true,
    // },
    // host needed for the Docker Container port mapping to work
    host: true,
    strictPort: true,
    port: 8080,
  }
})
