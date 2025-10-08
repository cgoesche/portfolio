<template>
  <div class="container w-md mx-auto items-center pt-2 pb-2 bottom-0 right-0 left-0 computer-modern-regular text-xs bg-white z-10">
    <footer class="mx-auto justify-between">
      <div class="object-center text-center pb-5">
        <p class="text-sm">Copyright © ({{ current_year }}) Christian Goeschel Ndjomouo. All Rights Reserved.<br>
        The source code for this website is licensed under <a href="https://opensource.org/license/mit" target="_blank">The MIT license ↗</a><br/>
      Version <a href="https://github.com/cgoesche/portfolio" target="_blank">{{ package_version }}</a></p>
      </div>

      <div class="text-center pb-5">
        <nav>
          <ul class="flex justify-center space-x-5">
            <li class="nav-item">
              <a href="https://github.com/cgoesche" target="_blank">GitHub</a>
            </li>
            <li class="nav-item">
              <a href="https://www.linkedin.com/in/christian-gn/" target="_blank">LinkedIn</a>
            </li>
            <li class="nav-item">
              <a href="mailto:cgoesc2@wgu.edu">Email</a>
            </li>
            <li class="nav-item">
              <a href="mailto:cgoesc2@wgu.edu">Resume</a>
            </li>
          </ul>
        </nav>
      </div>
    </footer>
  </div>
</template>
<script setup lang="ts">
const package_version = "unknown";

const year = new Date().getFullYear()
const current_year = ref(null)

onMounted(async () => {
  current_year.value = year;
})
</script>
