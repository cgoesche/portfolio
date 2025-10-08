<template>
  <!-- eslint-disable vue/no-multiple-template-root -->
  <MainContentBody>
    <div class="max-w-4xl mt-5 mx-auto pb-40">
      <p class="inter-300 text-xs lg:text-lg">Below you will find a non-exhaustive list of different technologies that I have worked and am familiar with.
        <br>
      You will also find some of my most recent notable projects with a link to the respective git repository or website.</p>
    <TechStackList class="mt-10"/>
    <ProjectList class="mt-10 mb-10"/>
      <NextPagePointer>
        <NuxtLink class="inter-300 text-3xl lg:text-4xl" to="/contact">Lets get in touch↗</NuxtLink>
      </NextPagePointer>
    </div>
  </MainContentBody>
  <!-- eslint-enable -->
</template>

<script setup lang="ts">
useSeoMeta({
  title: 'Experience',
})
</script>
