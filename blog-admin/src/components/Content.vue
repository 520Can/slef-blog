<template>
  <div class="content">
    <!-- <div class="navegation"></div> -->
    <Header />
    <div class="contentinner">
      <div class="contentouline">
        <router-view> </router-view>
      </div>
    </div>
  </div>
</template>

<script>
import Header from "../components/Header.vue";
// import { userlistAPI } from "../api/index";
export default {
  components: {
    Header,
  },
  data() {
    return {
      userlist: "",
    };
  },
  // async mounted() {
  //   let res = await userlistAPI();
  //   console.log(res);
  // },
};
</script>

<style lang="less" scoped>
.content {
  width: 100%;
  margin-left: 21%;
  .contentinner {
    width: 90%;
    margin: 20px auto;
    padding: 20px;
    border-radius: 10px;
    border: 0.1px solid #b3d8ff;
    // opacity: 0.5;
    .contentouline {
      width: 100%;
      // height: 650px;
      // overflow: scroll;
    }
  }
}
</style>