<template>
  <div class="inter-300">
    <div v-for="(obj, index) in CollapsibleObjects" :key="obj" class="collapse-list-wrapper">
      <div  class="collapse-list-label" @click="CollapsibleObjects[index].collapsed = !CollapsibleObjects[index].collapsed">
        <span class="text-md lg:text-2xl">{{ obj.label }}</span>
        <span class="collapse-list-button">{{ expandIcon(index) }}</span>
      </div>
      <ul v-if="!CollapsibleObjects[index].collapsed" class="collapsible-list">
        <li v-for="list in obj.list" :key="list">
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
    {label: 'Operating Systems', collapsed: true, list: [ { item: 'GNU/Linux' },
                                                          { item: 'macOS' },
                                                          { item: 'FreeBSD' },
                                                          { item: 'Windows' }]
                                                        },
    {label: 'Programming/Scripting', collapsed: true, list: [ { item: 'C' },
                                                              { item: 'Bash' },
                                                              { item: 'Golang' },
                                                              { item: 'awk'},
                                                              { item: 'Python' },
                                                              { item: 'Javascript/Typescript' },
                                                              { item: 'Java' },
                                                              { item: 'PowerShell' }]
                                                            },
    {label: 'Frameworks', collapsed: true, list: [  { item: 'Bubbletea (Golang)' },
                                                    { item: 'NuxtJS' }]
                                                  },
    {label: 'Monitoring/Observability', collapsed: true, list: [  { item: 'Node Exporter (Prometheus)' },
                                                                  { item: 'Grafana' },
                                                                  { item: 'OpsGenie' },
                                                                  { item: 'auditd (GNU/Linux)' }]
                                                                },
    {label: 'Database Management', collapsed: true, list: [ { item: 'MySQL' },
                                                            { item: 'PostgreSQL' },
                                                            { item: 'SQLite3' } ]
                                                          },
    {label: 'Webservers', collapsed: true, list: [  { item: 'Nginx' },
                                                    { item: 'Apache 2.0' }]
                                                  },
    {label: 'Virtualization/Containerization', collapsed: true, list: [ { item: 'Docker' },
                                                                        { item: 'Proxmox' },
                                                                        { item: 'QEMU' },
                                                                        { item: 'Openstack' },
                                                                        { item: 'Kubernetes'},
                                                                        { item: 'VMWare Fusion'}]
                                                                      },
    {label: 'Configuration Management Systems', collapsed: true, list: [  { item: 'Puppet' },
                                                                          { item: 'Ansible' }]
                                                                        },
    {label: 'Networking Tools', collapsed: true, list: [  { item: 'iptables' },
                                                          { item: 'nftables' },
                                                          { item: 'nmap' },
                                                          { item: 'Wireshark' },
                                                          { item: 'Tailscale' },
                                                          { item: 'Wireguard' },
                                                          { item: 'tcpdump' },
                                                          { item: 'iproute2' }]
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
  @apply inline-block h-auto pl-2;
}

.collapse-list-button {
  @apply text-xl lg:text-3xl hover:cursor-pointer;
}
</style>
