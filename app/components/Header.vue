<template>
  <div class="container flex fixed items-center mx-auto pt-2 pb-2 top-0 right-0 left-0 justify-between bg-white z-10">
  <header class="w-full flex items-center space-mono-regular justify-between">
    <div @click="mobileMenuActive = false">
      <NuxtLink to="/"><img class="h-10" src="/icons/cgn-icon-blk.svg" alt="Black CGN SVG icon"/></NuxtLink>
    </div>

    <nav>
      <ul id="desktop-nav-list" class="hidden lg:flex space-x-40 text-xs">
        <li class="nav-item">
          <NuxtLink ref="home-link" to="/">{{ homeLink }}</NuxtLink>
        </li>
        <li class="nav-item">
          <NuxtLink ref="about-link" to="/about">{{ aboutLink }}</NuxtLink>
        </li>
        <li class="nav-item">
          <NuxtLink ref="experience-link" to="/experience">{{ experienceLink }}</NuxtLink>
        </li>
        <li class="nav-item">
          <NuxtLink ref="contact-link" to="/contact">{{ contactLink }}</NuxtLink>
        </li>
      </ul>

      <ul id="mobile-nav-button" class="flex lg:hidden space-x-40 text-xs">
        <a @click="mobileMenuActive = !mobileMenuActive" class="hover:cursor-pointer">MENU</a>
      </ul>
    </nav>
  </header>
  </div>

  <div :class="{active: mobileMenuActive}" class="mobile-menu items-center space-mono-regular">
    <div class="menu inline-flex mx-auto h-auto w-auto">
      <nav class="text-center">
        <ul class="text-2xl">
          <li>
            <NuxtLink @click="mobileMenuActive = false" ref="home-link" to="/">HOME</NuxtLink>
          </li>
          <li>
            <NuxtLink @click="mobileMenuActive = false" ref="about-link" to="/about">ABOUT ME</NuxtLink>
          </li>
          <li>
            <NuxtLink @click="mobileMenuActive = false" ref="experience-link" to="/experience">EXPERIENCE</NuxtLink>
          </li>
          <li>
            <NuxtLink @click="mobileMenuActive = false" ref="contact-link" to="/contact">CONTACT</NuxtLink>
          </li>
        </ul>
      </nav>
    </div>
  </div>

</template>
<script setup lang="ts">
import {useTemplateRef} from "vue";

const mobileMenuActive = ref(false);
const route = useRoute();
const homeLink = ref("HOME")
const aboutLink = ref("ABOUT ME")
const experienceLink = ref("EXPERIENCE")
const contactLink = ref("CONTACT")

function clearLinkHighlight(){
  homeLink.value = "HOME";
  aboutLink.value = "ABOUT ME";
  experienceLink.value = "EXPERIENCE";
  contactLink.value = "CONTACT";
}

function highlightCurrentLink(route: String) {
  switch (route.name) {
    case "index":
      homeLink.value = "> HOME <";
      break;
    case "about":
      aboutLink.value = "> ABOUT ME <";
      break;
    case "experience":
      experienceLink.value = "> EXPERIENCE <";
      break;
    case "contact":
      contactLink.value = "> CONTACT <";
      break;
  }
}

onMounted(() => {
  clearLinkHighlight();
  highlightCurrentLink(route);
});

watch(() => route.path, (to, from) => {
  clearLinkHighlight();
  highlightCurrentLink(route);
});
</script>
<style scoped>
.mobile-menu {
  display: none;
  position: fixed;
  top: 0;
  left: 0;
  width: 100%;
  height: 0%;
  background-color: #FFFFFF;
  z-index: 9;
  transition: height .5s ease, background-color .5s ease;
}

.active {
  display: flex;
  height: 100%;
}
</style>
