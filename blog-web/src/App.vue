<template>
  <div id="nav">
    <Usermess></Usermess>
    <Toast></Toast>
    <Header></Header>
  </div>
  <router-view />
</template>

<script>
import Header from "./views/Header.vue";
import Toast from "./components/Toast.vue";
import Usermess from "./components/Usermess.vue";
export default {
  components: {
    Header,
    Toast,
    Usermess,
  },
};
</script>
<style lang="less">
* {
  margin: 0;
  padding: 0;
}
html,
body {
  width: 100%;
  height: 100%;
  // height: auto;
  // color: #ffffff;
  // color: red;
  // background-color: rgb(0, 0, 0);
  color: rgb(0, 0, 0);
  background-color: white;
}
html::-webkit-scrollbar {
  width: 0px;
  // background-color: rgb(117, 117, 117);
}
// #app {
//   // background: rgb(70, 72, 67);
//   font-family: Avenir, Helvetica, Arial, sans-serif;
//   -webkit-font-smoothing: antialiased;
//   -moz-osx-font-smoothing: grayscale;
//   width: 100%;
//   height: 100%;
//   color: rgb(213, 15, 15);
//   // height: auto;
//   // color: #2c3e50;
//   // color: white;
//   // background-color: rgb(118, 118, 118);
// }
</style>
