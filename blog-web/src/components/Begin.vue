<template>
  <div class="begin">
    <div class="back">
      <img src="../assets/bg.svg" class="wow fadeIn" data-wow-duration="3s" />
    </div>

    <div class="center">
      <h2 class="wow slideInLeft" data-wow-duration="1s">
        这是我的第一个博客
      </h2>
      <p class="wow slideInLeft" data-wow-duration="1.2s">
        for universe,for human,for past,for future
      </p>
    </div>
    <div id="buttom">
      <h3>往上滑动以浏览更多</h3>
      <a><img src="../assets/images/arror.png" /></a>
    </div>
  </div>
</template>

<script>
import { WOW } from "../assets/style/wow";
export default {
  mounted() {
    this.$nextTick(function () {
      new WOW().init();
    });
  },
  components: {
  },
};
</script>

<style scoped lang="less">
.begin {
  z-index: 1;
  width: 100%;
  // height: 100%;


  // overflow: hidden;
 
  .back {
    z-index: 0;
    position: absolute;
    width: 100%;
    height: 93%;
    // overflow: hidden;
    img {
      user-select: none;
      position: absolute;
      width: 100%;
      height: 100%;
      // height: 100vh;
      opacity: 0.9;
      // overflow: hidden;
      pointer-events: none;
    }
  }

  .center {
    position: absolute;
    // color: rgb(0, 0, 0);
    color: inherit;
    left: 50%;
    top: 50%;
    transform: translate(-50%, -50%);
    h2 {
      // font-family: "幼圆", "新宋体";
      text-align: center;
      font-size: 40px;
      font-weight: 500;
      // color: rgb(50, 52, 50);
      color: inherit;
    }
    p {
      text-align: center;
      font-family: "新宋体";
      font-size: 30px;
      // color: rgb(50, 52, 50);
      color: inherit;
      font-weight: 100;
    }
  }
  #buttom {
    h3 {
      z-index: 2;
      position: absolute;
      left: 50%;
      transform: translateX(-50%);
      color: rgb(233, 233, 233);
      margin: 0 auto;
      position: absolute;
      bottom: 0;
      opacity: 0.9;
      margin-bottom: 50px;
      animation: toup 5s;
      animation-iteration-count: infinite;
    }
    @keyframes toup {
      0% {
        bottom: 0px;
        opacity: 0.2;
      }
      40% {
        bottom: 35px;
        opacity: 1;
      }

      100% {
        bottom: 35px;
        opacity: 0;
      }
    }
    img {
      left: 50%;
      z-index: 2;
      transform: translateX(-50%);
      position: absolute;
      bottom: 0;
      opacity: 0.9;
      animation: tobuttom 5s;
      animation-iteration-count: infinite;
    }
    @keyframes tobuttom {
      0% {
        bottom: 0px;
        opacity: 0.8;
      }
      50% {
        bottom: 20px;
        opacity: 0;
      }
      99% {
        opacity: 0;
      }
      100% {
        bottom: 0px;
        opacity: 0.8;
      }
    }
  }
}


</style>