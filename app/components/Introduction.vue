<template>
<div style="width: 540px;" class="mx-auto pb-40 space-mono-regular text-xl lg:text-2xl link_underline">
        <p class="computer-modern-regular text-sm lg:text-xl">
        <strong id="Abstract"><a href="#Abstract">Abstract</a></strong>
        <br><br>
        As you have probably already figured out, my name is <strong>Christian Goeschel Ndjomouo</strong>.
        I am a <i>Software Engineering Undergraduate</i> from Montreal, Canada and have been working 
        as <i>IT Administrator at OVHcloud Canada</i> for about 2 years.
        <br><br>
        I am also an active development contributor to <a class="underline" href="https://en.wikipedia.org/wiki/Util-linux" target="_blank">util-linux</a>,
        the project that provides core utilities to the GNU/Linux operating system.
        Some of the most notable tools that I have worked on, in this project, are: <a :href="manpages_urls['kill']" target="_blank">kill</a>, 
        <a :href="manpages_urls['more']" target="_blank">more</a>, <a :href="manpages_urls['getopt']" target="_blank">getopt</a>,
        <a :href="manpages_urls['lscpu']" target="_blank">lscpu</a> and <a :href="manpages_urls['swapon']" target="_blank">swapon</a>.
        If you wish to find out more about my work in this regard, you can look at a more comprehensive list <a :href="misc_urls['util-linux-git']" target="_blank">here</a>.
        <br><br>
        <strong id="Experience"><a href="#Experience">Experience</a></strong>
        <br><br>
        At my current job I am often creating or refactoring Bash scripts and improving the Puppet code used for deployments of Ubuntu workstations and
        Debian kiosk systems. Occassionally, I will also build kernel modules for incompatible hardware to reduce operational costs created by unnecessary material waste, and avoid process 
        disruptions that can harm business continuity. If needed I also review automation processes and (re)design CI/CD pipelines that entail solid testing and build workflows.
        It can also happen that I have to mount and setup an entire 42U server rack with networking equipment and integrate these in the office network.
        <br><br>
        In addition to that, you will find a non-exhaustive list of different technologies that I have worked with.
        You will also find some of my most recent and notable projects.
        <br><br>
        <i>Technologies</i>
        <br><br>
        <TechStackList/>
        <br><br>
        <i>Projects</i>
        <br><br>
        <ProjectList/>
        </p>
  </div>
</template>

<script setup lang="ts">
const misc_urls = {
        "util-linux-git": "https://git.kernel.org/pub/scm/utils/util-linux/util-linux.git/log/?qt=author&q=Christian+Goeschel+Ndjomouo"
}

const manpages_urls = {
        "getopt": "https://man7.org/linux/man-pages/man1/getopt.1.html",
        "kill": "https://man7.org/linux/man-pages/man1/kill.1.html",
        "lscpu": "https://man7.org/linux/man-pages/man1/lscpu.1.html",
        "more": "https://man7.org/linux/man-pages/man1/more.1.html",
        "swapon": "https://man7.org/linux/man-pages/man8/swapon.8.html"
};
</script>

<style>
.link_underline a {
        @apply underline
}
</style>