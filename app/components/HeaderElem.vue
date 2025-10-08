<template>
  <div class="flex items-center mx-auto pt-2 pb-2 top-0 right-0 left-0 justify-between bg-white z-10">
  <header class="w-md mx-auto items-center computer-modern-regular">
    <div class="mx-auto text-center pt-5" @click="mobileMenuActive = false">
      <NuxtLink to="/"><img class="mx-auto h-10" src="/icons/cgn-icon-blk.svg" alt="Black CGN SVG icon"></NuxtLink>
    </div>

    <nav>
      <ul id="desktop-nav-list" class="pt-5 flex space-x-10 text-sm">
        <li class="nav-item">
          <NuxtLink :class="{underlinelink: currentIsHome}" ref="home-link" to="/">Home</NuxtLink>
        </li>
        <li class="nav-item">
          <NuxtLink :class="{underlinelink: currentIsXp}" ref="experience-link" to="/#Experience">Experience</NuxtLink>
        </li>
          <li class="nav-item">
          <NuxtLink :class="{underlinelink: currentIsBlog}" ref="blog-link" to="/blog">Blog</NuxtLink>
        </li>
        <li class="nav-item">
          <NuxtLink :class="{underlinelink: currentIsContact}" ref="contact-link" to="/contact">Contact</NuxtLink>
        </li>
      </ul>

      <ul id="mobile-nav-button" class="flex hidden space-x-40 text-xs">
        <a class="hover:cursor-pointer" @click="mobileMenuActive = !mobileMenuActive">MENU</a>
      </ul>
    </nav>
  </header>
  </div>

  <div :class="{active: mobileMenuActive}" class="mobile-menu items-center space-mono-regular">
    <div class="menu inline-flex mx-auto text-center h-auto w-auto">
      <nav class="text-center">
        <ul class="text-2xl">
          <li>
            <NuxtLink ref="home-link" to="/" @click="mobileMenuActive = false">Home</NuxtLink>
          </li>
             <li>
            <NuxtLink ref="experience-link" to="/experience" @click="mobileMenuActive = false">Experience</NuxtLink>
          </li>
          <li>
            <NuxtLink ref="blog-link" to="/blog" @click="mobileMenuActive = false">Blog</NuxtLink>
          </li>
          <li>
            <NuxtLink ref="contact-link" to="/contact" @click="mobileMenuActive = false">Contact</NuxtLink>
          </li>
        </ul>
      </nav>
    </div>
  </div>

</template>
<script setup lang="ts">
const currentIsHome = ref(false);
const currentIsXp = ref(false);
const currentIsBlog = ref(false);
const currentIsContact = ref(false);
const mobileMenuActive = ref(false);
const route = useRoute();

function clearLinkHighlight(){
  currentIsHome.value = false;
  currentIsXp.value = false;
  currentIsBlog.value = false;
  currentIsContact.value = false;
}

function highlightCurrentLink(route: string) {
  switch (route.name) {
    case "index":
      currentIsHome.value = true;
      break;
    case "experience":
      currentIsXp.value = true;
      break;
    case "blog":
      currentIsBlog.value = true;
      break;
    case "contact":
      currentIsContact.value = true;
      break;
  }
}

onMounted(() => {
  clearLinkHighlight();
  highlightCurrentLink(route);
});

watch(() => route.path, () => {
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

.underlinelink {
  &:after {
    content: '';
    display: block;
    height: 1px;
    transition: width .5s ease, background-color .5s ease;
    width: 100%;
    background: #000000;
  }
}
</style>
