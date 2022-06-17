<template>
  <div
    class="toast wow fadeIn"
    data-wow-duration="1s"
    v-show="$store.state.toast"
  >
    <div class="sharecontent" v-show="sharecode">
      <p>{{ address }}</p>
      <input type="text" class="content" :value="address" />
      <!-- <input class="content">www.baidu.com</input> -->
    </div>
    <div class="line"></div>
    <div class="share">
      <div @click="sharefn" class="shareicon">
        <img src="../assets/qq.png" />
      </div>
      <div @click="sharefn" class="shareicon imgs">
        <img src="../assets/wx.png" />
      </div>
      <div @click="sharefn" class="shareicon imgs">
        <img src="../assets/wb.png" />
      </div>
      <div @click="sharefn" class="shareicon imgs">
        <img src="../assets/fc.png" />
      </div>
      <div @click="sharefn" class="shareicon">
        <img src="../assets/gb.png" />
      </div>
    </div>
    <div class="closed" @click="close"></div>
  </div>
</template>

<script>
import { WOW } from "../assets/style/wow";

export default {
  data() {
    return {
      address: "www.uucn.top",
      sharecode: false,
    };
  },
  methods: {
    sharefn() {
      this.sharecode = true;
      const res = document.querySelector(".content");
      res.setAttribute("value", "www.uucn.top");
      res.select();
      document.execCommand("Copy");
      alert("复制成功，去分享吧");
    },
    close() {
      this.sharecode = false;

      this.$store.state.toast = !this.$store.state.toast;
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
.toast {
  position: fixed;
  width: 100%;
  height: 100%;
  // display: none;
  z-index: 999999;
  //   opacity: 0.1;
  //   filter: blur(80px);
  // backdrop-filter: 80px;

  // background: linear-gradient(140deg, #fc5c7d, #e1eec3);
  background: linear-gradient(#74ebd5, #acb6e5);
  .sharecontent {
    position: absolute;
    left: 50%;
    top: 70%;
    transform: translate(-50%, -50%);
    p {
      text-align: center;
      color: #ffffff;
    }
    .content {
      user-select: all;
      margin-top: 20px;
      border: 1px dashed #d064e8;
      // padding: 20px 40px;
      line-height: 40px;
      border-radius: 10px;
      padding: 0 40px;
    }
  }
  .line {
    width: 100%;
    height: 2px;
    background-color: rgba(255, 255, 255, 0.5);
    position: absolute;
    top: 50%;
  }
  .share {
    display: flex;
    // position: absolute;
    position: fixed;
    backdrop-filter: blur(1px);
    top: 50%;
    left: 50%;
    color: white;
    transform: translate(-50%, -50%);
    // overflow: hidden;

    .shareicon {
      position: relative;
      width: 80px;
      height: 80px;
      display: flex;
      background-color: rgba(252, 252, 252, 0.1);
      margin: 0 15px;
      border-radius: 10px;
      border: 1px solid rgba(252, 252, 252, 0.5);
      transition: 0.2s linear;
      overflow: hidden;
      transition: 0.2s linear;
      align-items: center;
      justify-content: space-around;
      img {
        width: 40px;
        height: 40px;
        pointer-events: none;
        user-select: none;
      }
      .imgs {
        width: 30px;
        height: 30px;
      }
      &:hover {
        transform: translateY(-15px);
      }
      &::before {
        content: "";
        top: 6px;
        left: -3px;
        position: absolute;
        width: 30px;
        overflow: hidden;
        height: 210px;
        background-color: rgba(255, 255, 255, 0.6);
        transform: rotate(135deg);
        transition: 0.2s linear;
      }
      &:hover::before {
        top: -104px;
        left: 100px;
      }
    }
  }
  .closed {
    position: absolute;
    // background-color: black;
    width: 50px;
    height: 50px;
    top: 40px;
    transition: 0.2s linear;
    right: 40px;
    &::before {
      content: "";
      position: absolute;
      width: 40px;
      height: 10px;
      left: -5px;
      top: 20px;
      background-color: white;
      transform: rotate(45deg);
      border-radius: 5px;
      transition: 0.1s linear;
    }
    &::after {
      content: "";
      position: absolute;
      width: 40px;
      height: 10px;
      left: -5px;
      top: 20px;
      background-color: white;
      transform: rotate(-45deg);
      border-radius: 5px;
      transition: 0.1s linear;
    }
    &:hover::before {
      background-color: #acb6e5;
    }
    &:hover::after {
      background-color: #acb6e5;
    }
  }
}
</style>