import { defineConfig } from 'vite'
import react from '@vitejs/plugin-react'
import tailwindcss from 'tailwindcss'
import autoprefixer from 'autoprefixer'

export default defineConfig({
  plugins: [react()],
  css: {
    postcss: {
      plugins: [tailwindcss, autoprefixer],
    },
  },
  build: {
    outDir: 'dist',
    sourcemap: false,
    minify: 'terser',
  },
  server: {
    host: '0.0.0.0',
    port: 3000,
  },
})
