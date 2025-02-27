<template>
  <div class="container h-full lg:h-auto mx-auto">
    <MainContentBody>
      <slot></slot>
    </MainContentBody>
  </div>
  <Header />
  <Footer />
</template>

<script setup lang="ts">
useHead({
  titleTemplate: '%s - Christian Goeschel Ndjomouo\'s portfolio',

  link: [
    {
      rel: 'preconnect',
      href: 'https://fonts.googleapis.com',
    },
    {
      rel: 'preconnect',
      href: 'https://fonts.gstatic.com',
      crossOrigin: '',
    },
    {
      rel: 'stylesheet',
      href: 'https://fonts.googleapis.com/css2?family=Space+Mono:ital,wght@0,400;0,700;1,400;1,700&display=swap'
    },
    {
      rel: 'stylesheet',
      href: 'https://fonts.googleapis.com/css2?family=Inter:ital,opsz,wght@0,14..32,100..900;1,14..32,100..900&family=Space+Mono:ital,wght@0,400;0,700;1,400;1,700&display=swap'
    },
  ]
})
</script>

<style>
.space-mono-regular {
  font-family: "Space Mono", serif;
  font-weight: 400;
  font-style: normal;
}

.space-mono-bold {
  font-family: "Space Mono", serif;
  font-weight: 700;
  font-style: normal;
}

.space-mono-regular-italic {
  font-family: "Space Mono", serif;
  font-weight: 400;
  font-style: italic;
}

.space-mono-bold-italic {
  font-family: "Space Mono", serif;
  font-weight: 700;
  font-style: italic;
}

.inter-100 {
  font-family: "Inter", serif;
  font-optical-sizing: auto;
  font-weight: 100;
  font-style: normal;
}

.inter-150 {
  font-family: "Inter", serif;
  font-optical-sizing: auto;
  font-weight: 150;
  font-style: normal;
}

.inter-200 {
  font-family: "Inter", serif;
  font-optical-sizing: auto;
  font-weight: 200;
  font-style: normal;
}

.inter-300 {
  font-family: "Inter", serif;
  font-optical-sizing: auto;
  font-weight: 300;
  font-style: normal;
}

.inter-400 {
  font-family: "Inter", serif;
  font-optical-sizing: auto;
  font-weight: 400;
  font-style: normal;
}

.inter-500 {
  font-family: "Inter", serif;
  font-optical-sizing: auto;
  font-weight: 500;
  font-style: normal;
}

body {
  @apply overflow-y-scroll;
  background-color: #ffffff;
}

.container {
  @apply max-w-full px-5 self-center;
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