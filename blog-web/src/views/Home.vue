<template>
  <div class="home">
    <Begin></Begin>
    <Content></Content>
  </div>
</template>

<script>
// @ is an alias to /src
import Begin from "../components/Begin.vue";
import Content from "../components/Content.vue";
export default {
  name: "Home",
  components: {
    Begin,Content
  },
};
</script>

<style scoped lang="less">
.home {
 background-color: inherit;
  width: 100%;
  height: 100%;
  z-index: -1;
}
</style>
