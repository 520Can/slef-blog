<template>
  <div class="wow slideInLeft" data-wow-duration="1s" id="about">
    <div id="card">
      <!-- <span style="--i: 0"></span>
      <span style="--i: 1"></span>
      <span style="--i: 2"></span>
      <span style="--i: 3"></span> -->
      <div id="glasses">
        <div class="selfbox">
          <div class="imgs"></div>
          <h2>不闹</h2>
          <h3>座右铭:</h3>
          <p>总有会成功的一天，说不定就是今天呢！</p>
        </div>
        <div class="vxcode">
          <h3>个人简介</h3>
          <p>性格开朗、稳重、有活力，待人热情、真诚;工作认真负责，积极主动,能吃苦耐劳，勇于承受
压励，勇于创新;有很强的组织能力和团队协作精神，具有较强的适应能力;
</p>
        </div>
      </div>
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
};
</script>

<style lang="less" scoped>
* {
  box-sizing: border-box;
}
#about {
  display: flex;
  justify-content: center;
  align-items: center;
  min-height: 100vh;
  // background: rgb(193, 243, 248);
  // background: linear-gradient(#74ebd5, #acb6e5);
  z-index: 0;
}
#glasses {
  position: relative;
  width: 500px;
  height: 300px;
  background-color: rgba(255, 255, 255, 0.3);
  border-radius: 20px;
  overflow: hidden;
  display: flex;
  align-items: center;
  justify-content: space-around;
  .vxcode {
    width: 200px;
    height: 200px;
    // background-color: red;
    // background: url("../assets/vxcode.png") no-repeat center;
    // background-size: 210px 210px;
  }
  h2,
  h3,
  p,
  img {
    color: rgb(80, 103, 40);
  }
  h2 {
    margin-top: 10px;
    font-weight: 500;
  }
  .imgs {
    width: 100px;
    border-radius: 20px;
    height: 100px;
    background-image: url("https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fc-ssl.duitang.com%2Fuploads%2Fitem%2F202006%2F25%2F20200625201612_wdgky.thumb.1000_0.png&refer=http%3A%2F%2Fc-ssl.duitang.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1651415860&t=520075d9cc779a32377816f2566d58be");
    background-size: 100px 100px;
  }
  h3 {
    margin-top: 15px;
    font-weight: 300;
  }
  p {
    line-height: 28px;
    margin-top: 10px;
    width: 180px;
    font-weight: 100;
  }

  &:hover {
    .vxcode {
      transform: rotate(0deg);
    }
    .imgs {
      transform: scale(1.2);
      transition: 0.4s linear;
    }
  }
  &:hover .imgs {
    border-radius: 50%;
  }
  &:hover .vxcode {
    transition: 0.5s linear;
    border-radius: 40px;
    opacity: 0;
  }
  &::before {
    content: "阳光总在风雨后";
    text-align: center;
    line-height: 75px;
    position: absolute;
    width: 600px;
    height: 75px;
    color: white;
    background-color: rgb(93, 99, 88);
    transform: rotate(45deg);
    opacity: 1;
    top: 0px;
    left: 280px;
    transition: 0.4s linear;
  }
  &:hover::before {
    top: 100px;
    left: 10px;
    z-index: 1;
  }
  &::after {
    content: "chee chen";
    text-align: center;
    line-height: 75px;
    position: absolute;
    width: 300px;
    height: 75px;
    background-color: rgb(158, 233, 87);
    transform: rotate(45deg);
    opacity: 1;
    top: 0px;
    left: 500px;
    transition: 0.3s linear;
  }
  &:hover::after {
    // position: absolute;
    top: 40px;
    left: 300px;
  }
}
#card {
  z-index: 0;
  position: relative;
  display: flex;
  justify-content: center;
  align-items: center;
}
</style>