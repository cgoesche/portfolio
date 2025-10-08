<template>
  <!-- eslint-disable vue/no-multiple-template-root -->
  <MainContentBody>
  <BlogContainer/>
  </MainContentBody>
  <!-- eslint-enable -->
</template>

<script setup lang="ts">
useSeoMeta({
  title: 'Blog',
})

const myBirthday = new Date(1999, 10, 10);
const myBirthdayEpochSec = Math.floor(myBirthday.getTime() / 1000);
const currentDateEpochSec = Math.floor(Date.now() / 1000);
const ageEpochSec = currentDateEpochSec - myBirthdayEpochSec;
const age = ref(null)

onMounted(async () => {
  age.value = parseInt(ageEpochSec / 31536000);
})
</script>
<style scoped>
i {
  font-family: "Space Mono";
  @apply tracking-tighter;
}

em.blue {
  @apply text-blue-400;
}

em.red {
  @apply text-red-400;
}
</style>
