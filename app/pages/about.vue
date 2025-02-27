<template>
  <PageRouteHeader>
    About Me
  </PageRouteHeader>
  <MainContentBody>
    <div class="max-w-4xl mt-5 mx-auto pb-40">
      <span class="space-mono-regular text-lg text-gray-500">> Me <</span>
      <br>
      <p class="inter-300 text-3xl lg:text-4xl">My name is Christian Goeschel Ndjomouo, and I am a {{age}}-year-old <i>Systems Engineer</i> living in Montreal, Canada and originally from Germany.</p>
      <br><br>
      <span class="space-mono-regular text-lg text-gray-500">> Occupation <</span>
      <br>
      <p class="inter-300 text-3xl lg:text-4xl">Currently, I am enrolled at Western Governors University, pursuing my <i>B.Sc.in Software Engineering</i>, and have been working as an <i>IT Administrator</i> for Europe's leading cloud service provider, OVHcloud for almost 3 years.</p>
      <br><br>
      <span class="space-mono-regular text-lg text-gray-500">> Motive <</span>
      <br>
      <p class="inter-300 text-3xl lg:text-4xl">I am considerably <em class="blue">curious</em> and <em class="blue">passionate</em> about technology and eager to learn more whenever possible to avoid complacency pitfalls and <em class="red">ensure continuous improvements</em>.</p>
      <br><br>
      <span class="space-mono-regular text-lg text-gray-500">> Strength <</span>
      <br>
      <p class="inter-300 text-3xl lg:text-4xl">In addition, I am <em class="blue">critical</em> and <em class="blue">resilient</em>, which is significantly helpful when I <em class="red">solve complex problems</em> for high-priority incidents or <em class="red">debug critical business tools</em>.</p>
      <br><br>
      <span class="space-mono-regular text-lg text-gray-500">> Value <</span>
      <br>
      <p class="inter-300 text-3xl lg:text-4xl">Lastly, I see myself as a true <em class="blue">team player</em> who enjoys sharing knowledge with peers because I firmly believe that <em class="red">progress can only be achieved in collaboration</em>.</p>

      <NextPagePointer>
        <NuxtLink class="inter-300 text-3xl lg:text-4xl" to="/experience">Find out about my skills ↗</NuxtLink>
      </NextPagePointer>
    </div>
  </MainContentBody>
</template>

<script setup lang="ts">
import {useTemplateRef} from "vue";
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