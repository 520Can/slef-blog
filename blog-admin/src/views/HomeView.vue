<template>
  <div class="home">
    <div class="back"></div>
    <Aside />
    <Content :key="$store.state.managerrefresh" />
  </div>
</template>

<script>
import Aside from "../components/Aside.vue";
import Content from "../components/Content.vue";

export default {
  name: "HomeView",
  components: {
    Aside,
    Content,
  },
};
</script>

<style lang="less" scoped>
.home {
  display: flex;
  // .back {
  //   position: fixed;
  //   width: 100vw;
  //   height: 100vw;
  //   z-index: -1;
  //   background: linear-gradient(#bdc3c7, #2c3e50);
  // }
  .right {
    background-color: red;
    display: flex;
    flex-direction: column;
  }
}
</style>