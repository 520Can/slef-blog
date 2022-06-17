<template>
  <div class="explore">
    <div class="explores">
      <div class="left">
        <!-- <div
          class="sort wow slideInLeft"
          data-wow-duration=".4s"
          :to="'/styledesign'"
        >
          css样式设计
        </div> -->

        <router-link
          :to="item.topage"
          v-for="(item, index) in links"
          :key="index"
          class="sort wow slideInLeft"
          @click="activeClasss(index)"
          :class="activeclass == index ? 'actived' : ''"
          :data-wow-duration="item.time"
        >
          <i :class="item.classs"></i> {{ item.title }}</router-link
        >
        <!-- <div
          class="sort wow slideInLeft"
          data-wow-duration=".5s"
          :to="'/dynamic'"
        >
          jquery交互
        </div>
        <div
          class="sort wow slideInLeft"
          data-wow-duration=".8s"
          :to="'/program'"
        >
          设计项目
        </div> -->
      </div>
      <div class="right">
        <!-- <ExploreView></ExploreView> -->
        <router-view></router-view>
      </div>
    </div>
  </div>
</template>

<script>
import { WOW } from "../../assets/style/wow";
import ExploreView from "../../components/explore/Exploreview.vue";
export default {
  data() {
    return {
      links: [
        {
          title: "风景",
          topage: "/styledesign",
          time: "0.4s",
        },
        {
          title: "萌宠",
          topage: "/dynamic",
          time: "0.6s",
        },
        { title: "设计", topage: "/program", time: "0.8s" },
      ],
      activeclass: 0,
    };
  },
  components: {
    ExploreView,
  },
  methods: {
    activeClasss(index) {
      console.log(index);
      this.activeclass = index;
    },
  },
  mounted() {
    this.$nextTick(function () {
      new WOW().init();
    });
  },
};
</script>

<style lang="less" scoped>
.explore {
  width: 100%;
  height: 100%;
  // overflow: hidden;
  .explores {
    overflow: hidden;
    // margin-top: 150px;
    display: flex;
    // a {
    //   text-decoration: none;
    // }
    .left {
      position: fixed;
      margin-left: 100px;
      margin-top: 100px;
      width: 200px;
      height: 500px;
      font-family: "幼圆";
      font-weight: 700;
      display: flex;
      flex-direction: column;
      justify-content: space-around;
      align-items: center;
      &::after {
        position: absolute;
        content: "";
        width: 10px;
        left: 280px;
        height: 800px;
        top: -70px;
        border-radius: 10px;
        background-color: rgb(234, 234, 234);
      }
      // background-color: aquamarine;
      a {
        // &:link {
        //   color: red;
        // }
        // &:visited {
        //   color: red;
        // }
        // color: green;
        text-decoration: none;
        text-align: center;
        width: 100px;
        height: 40px;
        line-height: 40px;
        cursor: pointer;
        position: relative;
        &::before {
          position: absolute;
          content: "";
          width: 0px;
          height: 5px;
          background-color: rgb(126, 255, 126);
          border-radius: 5px;
          top: 32px;
          left: 50%;
          transition: 0.2s linear;
        }
        &:hover {
          color: rgb(17, 136, 255);
        }
        &:hover::before {
          left: 10px;
          width: 80px;
          background-color: rgb(129, 230, 185);
        }
        &:active {
          color: blues;
        }
      }
    }
  }
  .right {
    margin-left: 30%;
    margin-top: 100px;
    // background-color: red;
    width: 1000px;
    // margin-top: 200px;
  }
}
.actived {
  color: rgb(129, 230, 185);
}
</style>