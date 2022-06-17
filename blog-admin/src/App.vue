<template>
  <div id="app">
    <nav>
      <!-- <router-link>H</router-link> -->
      <!-- <router-link to="/home"></router-link> -->
    </nav>
    <router-view />
  </div>
</template>

<style lang="less">
html,
body {
  width: 100%;
  height: 100%;
}
html::-webkit-scrollbar {
  width: 0px;
}
#app {
  width: 100%;
  height: 100%;
  // background-color: rgb(41, 37, 37);
  // color: white;
}
</style>
