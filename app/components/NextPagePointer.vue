<template>
  <div class="inline-block w-auto">
    <div id="find-out-link">
      <slot></slot>
    </div>
  </div>
</template>
<style>
#find-out-link {
  display: inline-block;
  *display: inline;
  zoom: 1;
  margin: 20px 0px;
  a:after {
    content: '';
    display: block;
    height: 1px;
    width: 0;
    background: transparent;
    transition: width .5s ease, background-color .5s ease;
  }

  a:hover:after {
    width: 100%;
    background: #000000;
  }
}
</style>