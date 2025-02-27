<template>
  <div class="flex justify-between item-center inter-300 italic text-3xl lg:text-5xl text-gray-300">
    <h1>
      <slot/>
    </h1>
    <h1>{{route.path}}</h1>
  </div>
</template>
<script setup lang="ts">
const route = useRoute()
</script>
