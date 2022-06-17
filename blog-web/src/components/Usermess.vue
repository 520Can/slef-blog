<template>
  <div
    class="usermess wow fadeIn"
    data-wow-duration=".5s"
    v-show="$store.state.mess"
  >
    <div class="close" @click="$store.state.mess = false"></div>

    <div class="messbox">
      <p class="wow fadeInLeft" data-wow-duration=".2s">你的大名</p>
      <input
        type="text"
        v-model="nackname"
        class="wow fadeInLeft"
        data-wow-duration=".3s"
      />
      <p>你的头像(去网上找一个吧)</p>
      <input
        type="text"
        v-model="headimg"
        class="wow fadeInLeft"
        data-wow-duration=".4s"
      />
      <p class="wow fadeInLeft" data-wow-duration=".5s">你的联系方式</p>
      <input
        type="text"
        v-model="link"
        class="wow fadeInLeft"
        data-wow-duration=".6s"
      />
      <p class="wow fadeInLeft" data-wow-duration=".7s">你想对博主说:</p>
      <textarea
        cols="40"
        rows="10"
        v-model="content"
        class="wow fadeInLeft"
        data-wow-duration=".8s"
      ></textarea>
      <button @click="postMess" class="wow fadeInLeft" data-wow-duration=".9s">
        留言
      </button>
    </div>
  </div>
</template>

<script>
import { postMessAPI } from "../api/index";
import { WOW } from "../assets/style/wow";

export default {
  data() {
    return {
      content: "",
      nackname: "",
      link: "",
      headimg: "",
    };
  },
  methods: {
    async postMess() {
      if (
        this.content == "" ||
        this.nackname == "" ||
        this.link == "" ||
        this.headimg == ""
      ) {
        return alert("不允许提交空的字符");
      }
      var date = new Date();
      await postMessAPI(
        this.content,
        this.nackname,
        date,
        this.link,
        this.headimg
      );
      alert("留言成功,感谢您提出的宝贵意见，再会哟");
      this.content = "";
      this.nackname = "";
      this.link = "";
      this.headimg = "";
    },
  },
  mounted() {
    this.$nextTick(function () {
      new WOW().init();
    });
  },
};
</script>

<style lang='less' scoped>
.usermess {
  width: 100%;
  height: 100%;
  // background-color: red;
  // background: linear-gradient(#2980b9, #6dd5fa, #ffffff);
  background: linear-gradient(#74ebd5, #acb6e5);

  position: fixed;
  // display: none;
  z-index: 999;
  .close {
    position: absolute;
    right: 0;
    margin-right: 40px;
    margin-top: 40px;
    // background-color: white;
    &::before {
      position: absolute;
      content: "";
      width: 5px;
      height: 30px;
      background-color: white;
      transform: rotate(45deg);
      border-radius: 2px;
    }
    &::after {
      position: absolute;
      left: 0px;
      content: "";
      width: 5px;
      height: 30px;
      background-color: white;
      border-radius: 2px;
      transform: rotate(-45deg);
    }
  }
  .messbox {
    padding: 50px;
    width: 400px;
    // height: 400px;
    // background-color: white;
    position: absolute;
    left: 50%;
    top: 50%;
    background-color: rgba(rgb(255, 255, 255), 0.2);
    transform: translate(-50%, -50%);
    // border: 1px solid grey;
    border-radius: 10px;
    // filter: blur(1px);
    transform: blur(1px);
    p {
      margin-top: 10px;
      margin-bottom: 5px;
    }
    input {
      border: rgb(189, 189, 189) 1px solid;
      // padding: 10px 30px;
      width: 60%;
      height: 40px;
      text-indent: 1em;
      outline: none;
      border-radius: 10px;
      background-color: rgba(rgb(216, 245, 251), 0.5);
    }
    textarea {
      background-color: rgba(rgb(216, 245, 251), 0.5);
      border-radius: 10px;
      text-indent: 1em;
      outline: none;
    }
  }
}
button {
  width: 80%;
  padding: 10px;
  border: none;
  background-color: rgb(83, 191, 230);
  &:hover {
    opacity: 0.8;
  }
}
</style>