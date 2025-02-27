<template>
  <PageRouteHeader>
    Home
  </PageRouteHeader>
  <MainContentBody>
  <div class="max-w-2xl mx-auto pb-40 inter-300 text-3xl lg:text-5xl">
    <h3>Information technology caters perfectly to my <em>curiosity</em>
     and gives me the <em>freedom</em> and <em>resources</em> to <i>create</i>, <i>explore</i>, <i>improve</i> and <i>innovate</i> for me and others.</h3>
    <br>
    <NextPagePointer>
      <NuxtLink to="/about">Find out who I am ↗</NuxtLink>
    </NextPagePointer>

  </div>
  </MainContentBody>
</template>

<script setup lang="ts">
useSeoMeta({
  title: 'Homepage',
  description: 'This is Christian Goeschel Ndjomouo\'s portfolio website',
  ogTitle: 'Portfolio - Christian Goeschel Ndjomouo',
  ogDescription: 'Visit Christian Goeschel Ndjomouo\'s portfolio website',
  ogImage: '[og:image]',
  ogUrl: 'christiangoeschel.com',
  twitterTitle: 'Portfolio - Christian Goeschel Ndjomouo',
  twitterDescription: 'Visit Christian Goeschel Ndjomouo\'s portfolio website',
  twitterImage: '[twitter:image]',
  twitterCard: 'summary'
})

useHead({
  htmlAttrs: {
    lang: 'en'
  },
  link: [
    {
      rel: 'icon',
      type: 'image/x-icon',
      href: '/favicon.ico',
    }
  ]
})
</script>

<style scoped>
  em {
    @apply text-blue-400
  }

  i {
    @apply text-red-400
  }
</style>