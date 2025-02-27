<template>
  <div class="inter-300">
    <span class="space-mono-regular text-lg text-gray-500" @click="toggleAll">[ Technologies ]</span>
    <br><br>

    <div v-for="(obj, index) in CollapsibleObjects" :key="obj" class="collapse-list-wrapper">
      <div  class="collapse-list-label" @click="CollapsibleObjects[index].collapsed = !CollapsibleObjects[index].collapsed">
        <span class="text-xl lg:text-3xl">{{ obj.label }}</span>
        <span class="collapse-list-button">{{ expandIcon(index) }}</span>
      </div>
      <ul v-if="!CollapsibleObjects[index].collapsed" class="collapsible-list">
        <li v-for="list in obj.list" :key="list" class="text-xl lg:text-xl">
          {{ list.item }}
        </li>
      </ul>
    </div>

  </div>
</template>
<script setup lang="ts">

type CollapsibleObject = {
  label: string;
  collapsed: boolean;
  list: Array<object>;
};

const CollapsibleObjects = ref<Array<CollapsibleObject>>([
    {label: 'Operating Systems', collapsed: true, list: [{ item: 'GNU/Linux' }, { item: 'macOS' }, { item: 'FreeBSD' }, { item: 'Windows' }]},
    {label: 'Programming/Scripting', collapsed: true, list: [{ item: 'Golang' }, { item: 'Bash' }, { item: 'Python' }, { item: 'C' },
        { item: 'Javascript/Typescript' }, { item: 'Java' }, { item: 'PowerShell' }]},
    {label: 'Frameworks', collapsed: true, list: [{ item: 'Bubbletea (Golang)' }, { item: 'NuxtJS' }]},
    {label: 'Monitoring/Observability', collapsed: true, list: [{ item: 'Node Exporter (Prometheus)' }, { item: 'Grafana' }, { item: 'OpsGenie' }, { item: 'auditd (GNU/Linux)' }]},
    {label: 'Database Management', collapsed: true, list: [{ item: 'MySQL' }, { item: 'PostgreSQL' }, { item: 'SQLite' } ]},
    {label: 'Webservers', collapsed: true, list: [{ item: 'Nginx' }, { item: 'Apache 2.0' }]},
    {label: 'Virtualization/Containerization', collapsed: true, list: [{ item: 'Docker' }, { item: 'Proxmox' }, {item: 'Kubernetes'}, {item: 'VMWare Fusion'}]},
    {label: 'Configuration Management Systems', collapsed: true, list: [{ item: 'Puppet' }, { item: 'Ansible' }]},
    {label: 'Networking', collapsed: true, list: [{ item: 'Cisco IOS' }, { item: 'Tailscale' }, { item: 'Wireguard' }]},
]);

function expandIcon(i: number){
  return CollapsibleObjects.value[i].collapsed ? '+' : '-'
}
</script>
<style scoped>
div {
  transition: all .2s ease-out;
}

.collapse-list-wrapper {
  border-bottom:  black solid 1px;
  background-color: #FFFFFF;

}

.collapse-list-label {
  @apply flex justify-between lg:p-2;

  &:hover {
    background-color: #000000;
    color: #FFFFFF;
    cursor: pointer;
  }
}

.collapsible-list {
  @apply inline-block h-auto lg:flex lg:space-x-5 p-2;
}

.collapse-list-button {
  @apply text-xl lg:text-3xl hover:cursor-pointer;
}
</style>
