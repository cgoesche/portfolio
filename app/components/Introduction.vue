<template>
<div class="responsive-container mx-auto pb-40 space-mono-regular text-xl lg:text-2xl link_underline">
        <p class="computer-modern-regular text-sm lg:text-xl">
        <strong id="Introduction"><a href="#Introduction">Introduction</a></strong>
        <br><br>
        As you have probably already figured out, my name is <strong>Christian Goeschel Ndjomouo</strong>.
        I am a <i>Software Engineering Undergraduate</i> from Montreal, Canada and have been working
        as <i>IT Administrator at OVHcloud Canada</i> for about 2 years.
        <br><br>
        I am also an active contributor to the development of <a class="underline" href="https://en.wikipedia.org/wiki/Util-linux" target="_blank">util-linux</a>,
        the project that provides core utilities for the GNU/Linux operating system.
        Some of the most notable tools I have worked on in this project are <a :href="manpages_urls['kill']" target="_blank">kill</a>,
        <a :href="manpages_urls['more']" target="_blank">more</a>, <a :href="manpages_urls['getopt']" target="_blank">getopt</a>,
        <a :href="manpages_urls['lscpu']" target="_blank">lscpu</a> and <a :href="manpages_urls['swapon']" target="_blank">swapon</a>.
        For more information about my work in this area, please refer to a more comprehensive list <a :href="misc_urls['util-linux-git']" target="_blank">here</a>.
        <br><br>
        To describe myself, I would claim that I am a particularly curious, highly self-driven and pragmatic person with a hint of idealistic notions. I am not afraid to challenge my own assumptions and am open-minded
        enough to learn from my mistakes and adapt to newly gained insights. I prefer a systematic approach to engineering problems, as I believe it creates well-structured, logical, and repeatable steps in problem 
        identification and resolution, which helps me better understand the relationship between the different components of a system and their limitations. That, in itself, creates opportunities to learn, improve, and 
        mitigate future risks. 
        <br><br>
        Lastly, I strive to put in a decent amount of effort in developing reliable, maintainable, scalable, and secure code that follows ethical approaches, primarily utilitarian and deontological. 
        <br><br>
        
        <strong id="Experience"><a href="#Experience">Experience</a></strong>
        <br><br>
        At my current job I am often creating or refactoring Bash scripts and improving the Puppet code used for deployments of Ubuntu workstations and
        Debian kiosk systems. Occassionally, I will also build kernel modules for incompatible hardware to prevent decommissions that increase operational costs through unnecessary material waste, and avoid process
        disruptions that can harm business continuity. If needed I also review automation processes and (re)design CI/CD pipelines that entail careful testing and build workflows.
        It can also happen that I have to mount and setup an entire 42U server rack with networking equipment and integrate these in the office network.
        <br><br>
        There is much more, but I think it is more convincing to demonstrate experience with projects. For that, below you will find a non-exhaustive list of my most recent projects and the different technologies that I 
        have worked with.
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
