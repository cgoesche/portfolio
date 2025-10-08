<template>
  <div class="h-auto mx-auto">
    <HeaderElem />
    <MainContentBody>
      <slot/>
    </MainContentBody>
  </div>
  <!-- eslint-disable vue/no-multiple-template-root -->
  <FooterElem />
  <!-- eslint-enable -->
</template>

<script setup lang="ts">
useSeoMeta({
  description: 'Christian Goeschel Ndjomouo\'s portfolio website',
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
  titleTemplate: '%s - Christian Goeschel Ndjomouo\'s portfolio',
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

<style>
@import '~/assets/css/main.css';
@import '~/assets/css/fonts.css';

.computer-modern-regular {
  font-family: "Computer-Modern-Normal", serif;
  font-weight: 400;
  font-style: normal;
}

.commit-mono-400-italic {
  font-family: "Commit-Mono-400-Italic", monospace;
  font-weight: 400;
  font-style: italic;
}

.commit-mono-400-regular {
  font-family: "Commit-Mono-400-Regular", monospace;
  font-weight: 400;
  font-style: normal;
}

.commit-mono-700-italic {
  font-family: "Commit-Mono-700-Italic", monospace;
  font-weight: 700;
  font-style: italic;
}

.commit-mono-700-regular {
  font-family: "Commit-Mono-700-Regular", monospace;
  font-weight: 700;
  font-style: normal;
}

.nav-item {
  display: inline-block;
  *display: inline;
  zoom: 1;
  margin: 0px;

  a:after {
    content: '';
    display: block;
    height: 1px;
    width: 0;
    background: transparent;
    transition: width .5s ease, background-color .5s ease;
  }

  a:hover:after {
    width: 100%;
    background: #000000;
  }
}
</style>
