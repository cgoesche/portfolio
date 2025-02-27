<template>
  <PageRouteHeader>
    Contact
  </PageRouteHeader>
  <!-- eslint-disable vue/no-multiple-template-root -->
  <MainContentBody>
    <div class="display-inline lg:flex lg:space-x-10 pb-40 justify-center">
      <div class="space-mono-regular text-base lg:text-lg">
        <span class="inter-300">Email</span><br>
        <a href="mailto:cgoesc2@wgu.edu">cgoesc2@wgu.edu</a>
        <br><br>
        <span class="inter-300">Gitea</span><br>
        <a href="https://gitea.christiangoeschel.com/christiangoeschel/" target="_blank">gitea.christiangoeschel.com/christiangoeschel/</a>
        <br><br>
        <span class="inter-300">LinkedIn</span><br>
        <a href="https://www.linkedin.com/in/christian-gn/" target="_blank">linkedin.com/in/christian-gn/</a>
        <br><br>
        <span class="inter-300">Discord</span><br>
        <a href="https://discord.com/users/userc23o" target="_blank">@userc23o</a>
      </div>
    </div>
  </MainContentBody>
  <!-- eslint-enable -->
</template>
<script setup lang="ts">
</script>
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
