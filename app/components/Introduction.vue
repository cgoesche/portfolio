<template>
<div class="responsive-container mx-auto pb-40 space-mono-regular text-xl lg:text-2xl link_underline">
        <p class="computer-modern-regular text-sm lg:text-xl">
        <strong id="Introduction"><a href="#Introduction">Introduction</a></strong>
        <br><br>
        As you have probably already figured out, my name is <strong>Christian Goeschel Ndjomouo</strong>.
        I am a <em>Site Reliability Engineer</em> and <em>Systems Programmer</em> from Montreal, Canada currently
        working for <em><a href="https://ovh.ca" target="_blank">OVHcloud Canada</a></em>.
        <br><br>
        I am also a collaborator and author for <a class="underline" href="https://en.wikipedia.org/wiki/Util-linux" target="_blank">util-linux</a>;
        the project that provides essential system utilities and libraries for the GNU/Linux operating system.
        Some of the most notable tools I have worked on in this project are <a :href="manpages_urls['getino']" target="_blank">getino(1)</a>, <a :href="manpages_urls['agetty']" target="_blank">agetty(8)</a>,
        <a :href="manpages_urls['kill']" target="_blank">kill(1)</a>, <a :href="manpages_urls['more']" target="_blank">more(1)</a>, <a :href="manpages_urls['getopt']" target="_blank">getopt(1)</a>,
        <a :href="manpages_urls['lscpu']" target="_blank">lscpu(1)</a> and <a :href="manpages_urls['swapon']" target="_blank">swapon(8)</a>.
        For a more comprehensive list please visit <a :href="misc_urls['util-linux-git']" target="_blank">here</a>.
        <br><br>
        To describe myself, I would claim that I am a <em>particularly curious</em>, <em>highly self-driven</em>, <em>autodidact</em> and <em>pragmatic</em> person with a <em>few idealistic notions</em>. I am not afraid to challenge my
        own assumptions and enjoy iterating over my mistakes to gain new insights and improve. I prefer a <i>systematic approach to engineering problems</i>, that involves both deductive and inductive reasoning approaches and systems level thinking methodologies. I believe that this strategy creates well-structured, logical, and repeatable steps that streamline the resolution of various problems sets, and produces highly effective solutions.
        <br><br>
        Lastly, I strive to put in a decent amount of effort in developing reliable, maintainable, scalable, and secure code that is highly functional as well as practical. 
        <br><br>

        <strong id="Experience"><a href="#Experience">Experience</a></strong>
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
        "agetty": "https://man7.org/linux/man-pages/man8/agetty.8.html",
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
