<template>
  <div class="container lg:fixed mx-auto items-center pt-2 pb-2 bottom-0 right-0 left-0 space-mono-regular text-xs bg-white z-10">
    <footer class="mx-auto lg:flex justify-between">
      <div class="object-center text-center pb-5 lg:text-left lg:pb-0">
        <p class="text-xs">Portfolio website for Christian Goeschel Ndjomouo - <a href="https://gitea.christiangoeschel.com/christiangoeschel/portfolio/" target="_blank">(v0.1.1)</a><br>
        ({{ current_year }})  This page is licensed under <a href="https://creativecommons.org/licenses/by-sa/4.0/deed.en" target="_blank">CC BY-SA 4.0 ↗</a></p>
      </div>

      <div class="text-center pb-5 lg:text-left lg:pb-0">
        <nav>
          <ul class="flex justify-center space-x-5 lg:justify-end">
            <li class="nav-item">
              <a href="https://gitea.christiangoeschel.com/christiangoeschel/" target="_blank">Gitea ↗</a>
            </li>
            <li class="nav-item">
              <a href="https://www.linkedin.com/in/christian-gn/" target="_blank">LinkedIn ↗</a>
            </li>
            <li class="nav-item">
              <a href="https://discordapp.com/users/userc23o" target="_blank">Discord ↗</a>
            </li>
            <li class="nav-item">
              <a href="mailto:cgoesc2@wgu.edu">Email ↗</a>
            </li>
          </ul>
        </nav>
      </div>
    </footer>
  </div>
</template>
<script setup lang="ts">
const year = new Date().getFullYear()
const current_year = ref(null)

onMounted(async () => {
  current_year.value = year;
})
</script>
