<template>
  <!-- eslint-disable vue/no-multiple-template-root -->
  <MainContentBody>
  <ContactStub/>
  </MainContentBody>
  <!-- eslint-enable -->
</template>

<style scoped>
input, select {
  @apply outline-none mx-2 bg-transparent;
}

textarea {
  min-width: 350px;
  height: 150px;
  @apply outline-none bg-transparent;
}
</style>

<script setup lang="ts">
useSeoMeta({
  title: 'Contact',
})
</script>