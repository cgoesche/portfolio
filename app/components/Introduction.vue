<template>
<div class="responsive-container mx-auto pb-40 space-mono-regular text-xl lg:text-2xl link_underline">
        <p class="computer-modern-regular text-sm lg:text-xl">
        <strong id="Introduction"><a href="#Introduction">Introduction</a></strong>
        <br><br>
        As you have probably already figured out, my name is <strong>Christian Goeschel Ndjomouo</strong>.
        I am a <em>Software Engineering Undergraduate</em> from Montreal, Canada and have been working
        as <em>IT Administrator at OVHcloud Canada</em> for about 2 years.
        <br><br>
        I am also a collaborator and author for <a class="underline" href="https://en.wikipedia.org/wiki/Util-linux" target="_blank">util-linux</a>;
        the project that provides essential system utilities and libraries for the GNU/Linux operating system.
        Some of the most notable tools I have worked on in this project are <a :href="manpages_urls['kill']" target="_blank">getino(1)</a>,
        <a :href="manpages_urls['kill']" target="_blank">kill(1)</a>, <a :href="manpages_urls['more']" target="_blank">more(1)</a>, <a :href="manpages_urls['getopt']" target="_blank">getopt(1)</a>,
        <a :href="manpages_urls['lscpu']" target="_blank">lscpu(1)</a> and <a :href="manpages_urls['swapon']" target="_blank">swapon(8)</a>.
        For a more comprehensive list please visit <a :href="misc_urls['util-linux-git']" target="_blank">here</a>.
        <br><br>
        To describe myself, I would claim that I am a <em>particularly curious</em>, <em>highly self-driven</em> and <em>pragmatic</em> person with a <em>few idealistic notions</em>. I am not afraid to challenge my
        own assumptions and am open-minded enough to learn from my mistakes and adapt to newly gained insights. I prefer a <i>systematic approach to engineering problems</i>, as I believe it creates well-structured, logical,
        and repeatable steps in problem identification and resolution, which can help me better understand the relationship between the different components of a system and its limitations. That, in itself, creates
        opportunities to learn, improve, look at problems more critically, take well-informed engineering decisions that help prevent shortcomings due to technical debt and, lastly, mitigate future risks.
        <br><br>
        Lastly, I strive to put in a decent amount of effort in developing reliable, maintainable, scalable, and secure code that follow utilitarian and deontological approaches. 
        <br><br>
        
        <strong id="Experience"><a href="#Experience">Experience</a></strong>
        <br><br>
        At my current job, I manage a wide range of IT operations, including the deployment, management, and maintenance of internal employee workstations, networking equipment, small-form-factor computer systems, 
        Cisco conferencing devices, and other related technologies. I also take responsibility for the IT assets in our Montreal office space, which means that I manage the IT stockrooms, assess the acquisition of new equipment 
        and handle device lifecycle management with environmental sustainability in mind.
        <br><br>
        On multiple occasions, I support the SOC department in achieving its goal of delivering secure IT systems in accordance to industry standards such as PCI-DSS and SecNumCloud, by improving internal user applications and security tools, conducting
        performing penetration tests, and patching security vulnerabilities, among other tasks. 
        <br><br>
        Aside from that, I often create or refactor Bash scripts and improve the Puppet code used for deploying Ubuntu workstations and
        Debian kiosk systems. Sometimes, I also build Linux kernel modules for incompatible hardware to prevent decommissioning that increases operational costs through unnecessary material waste, and to avoid process
        disruptions that can harm business continuity. If needed, I also review automation processes and (re)design CI/CD pipelines that entail careful testing and build workflows.
        <br><br>
        There is much more, but I think it is more convincing to demonstrate experience with projects. For that, below you will find a non-exhaustive list of my most recent projects and the different technologies that I 
        have worked with.
        <br><br>
        <em>Technologies</em>
        <br><br>
        <TechStackList/>
        <br><br>
        <em>Projects</em>
        <br><br>
        <ProjectList/>
        </p>
  </div>
</template>

<script setup lang="ts">
const misc_urls = {
        "util-linux-git": "https://git.kernel.org/pub/scm/utils/util-linux/util-linux.git/log/?qt=author&q=cgoesc2@wgu.edu"
}

const manpages_urls = {
        "getino": "https://man7.org/linux/man-pages/man1/getino.1.html",
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
