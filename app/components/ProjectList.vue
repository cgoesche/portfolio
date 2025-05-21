<template>
  <div class="inter-300">
    <span class="space-mono-regular text-lg text-gray-500" @click="toggleAll">[ Projects ]</span>
    <br><br>

    <div v-for="(obj, index) in CollapsibleObjects" :key="obj" class="collapsible-object-wrapper">
      <div class="collapsible-list-label" @click="CollapsibleObjects[index].collapsed = !CollapsibleObjects[index].collapsed">
        <span class="text-xl lg:text-3xl">{{ obj.label }}</span>
        <span class="collapsible-list-button">{{ expandIcon(index) }}</span>
      </div>
      <div v-if="!CollapsibleObjects[index].collapsed" class="collapsible-list-wrapper">
        <!-- eslint-disable vue/no-v-html -->
        <p class="mb-2" v-html="obj.project.description"/>
        <!-- eslint-enable -->
        <a :href="obj.project.url" target="_blank" class="text-xs lg:text-base hover:underline">{{ obj.project.url }}↗</a>
        <ul class="collapsible-list mt-2">
          <li v-for="stack in obj.project.techStack" :key="stack" class="text-sm lg:text-xl">
            {{ stack.item }}
          </li>
        </ul>
      </div>
    </div>

  </div>
</template>
<script setup lang="ts">

type Project = {
  url: string;
  description: string;
  techStack: Array<object>;
}

type CollapsibleObject = {
  label: string;
  collapsed: boolean;
  project: Project;
};

const CollapsibleObjects = ref<Array<CollapsibleObject>>([
  { label: 'PAM-Insults', collapsed: true,
    project: { url: 'https://github.com/cgoesche/pam-insults',
                    description: ' A PAM module that insults users when authentications fail ',
                    techStack: [{item: 'C'}, {item: 'PAM'}, {item: 'Linux'}]},
  },
  { label: 'Genesis', collapsed: true,
    project: { url: 'https://gitea.christiangoeschel.com/christiangoeschel/genesis',
                    description: 'A simple command line tool to control the built-in keyboard backlight via the org.freedesktop.UPower D-Bus service.',
                    techStack: [{item: 'Golang'}, {item: 'D-Bus'}]},
  },
  { label: 'Asahi Linux Debian Installer', collapsed: true,
    project: { url: 'https://gitea.christiangoeschel.com/christiangoeschel/asahi-debian',
    description: 'In this project I bootstrapped, pre-partitioned and automated the system configuration of a Debian installation image,' +
        ' which served as base image in the Asahi Linux installer for Apple Silicon devices.<br><br>' +
        'During the process I learned how to mount files as loop devices, partition a disk, use rsync, create system critical configuration files in /etc, ' +
        'install custom firmware, create a post-installation script and use the mkosi tool to bootstrap installer images.',
    techStack: [{item: 'Bash'}, {item: 'mkosi'}]},
  },
  { label: 'SHX', collapsed: true,
    project: { url: 'https://gitea.christiangoeschel.com/christiangoeschel/shx',
      description: 'A simple command line tool that searches for the shared file extents of a given file on a CoW enabled filesystem.',
      techStack: [{item: 'Golang'}]},
  },
  { label: 'MyDocs', collapsed: true,
    project: { url: 'https://docs.christiangoeschel.com',
      description: 'MyDocs is my personal knowledge base website that is built and served using Mkdocs Materials in Docker,' +
          ' and hosted in my Homelab server exposed to the public via a public reverse proxy instance.',
      techStack: [{item: 'Docker'}, {item: 'Yaml'}, {item: 'Markdown'}, {item: 'JavaScript'}]},
  },
  { label: 'Portfolio', collapsed: true,
    project: { url: 'https://www.christiangoeschel.com',
      description: 'My personal portfolio website hosted on my Homelab server using Docker',
      techStack: [{item: 'HTML'}, {item: 'CSS'}, {item: 'TailwindCSS'}, {item: 'JavaScript/Typescript'}, {item: 'NUXTJs (Vue)'}]},
  },
]);

function expandIcon(i: number){
  return CollapsibleObjects.value[i].collapsed ? '+' : '-'
}
</script>
<style scoped>
div {
  transition: all .2s ease-out;
}

.collapsible-object-wrapper {
  border-bottom:  black solid 1px;
  background-color: #FFFFFF;

}

.collapsible-list-label {
  @apply flex justify-between lg:p-2;

  &:hover {
    background-color: #000000;
    color: #FFFFFF;
    cursor: pointer;
  }
}

.collapsible-list-wrapper {
  @apply inline  p-2;
}

.collapsible-list {
  @apply lg:flex lg:space-x-5;
}

.collapsible-list-button {
  @apply text-xl lg:text-3xl hover:cursor-pointer;
}
</style>
