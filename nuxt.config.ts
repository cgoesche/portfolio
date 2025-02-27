// https://nuxt.com/docs/api/configuration/nuxt-config
import {resolve} from "path";

export default defineNuxtConfig({
  future: {
    compatibilityVersion: 4,
  },
  alias: {
    '@': resolve(__dirname, "/"),
  },
  loadingIndicator: {
    name: '~/assets/loading.html',
    background: 'white'
  },
  modules: ['@nuxtjs/tailwindcss', "nuxt-time"],
  compatibilityDate: '2024-11-01',
  devtools: { enabled: false },
  spaLoadingTemplate: false,
})