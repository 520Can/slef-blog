<template>
  <div class="header">
    <div class="headers">
      <h1 @click="$router.push('/')">BLOG</h1>
      <div class="more">
        <img @click="changeback" :src="imgsrc">
        <button @click="$router.push('/')"><i class="iconfont icon-shouye"></i> 首页</button>
        <button @click="$router.push('/about')"><i class="iconfont icon-wode"></i> 关于我</button>
        <button @click="$router.push('/articles')"><i class="iconfont icon-guidang"></i> 归档</button>
        <button @click="$router.push('/explore')"><i class="iconfont icon-xiangce1"></i> 相册</button>
        <button @click="change"><i class="iconfont icon-fenxiang"></i> 分享</button>
        <button class="git"><i class="iconfont icon-lianxiwomen"></i> GitHub</button>
        <div class="gitinfo">
          <p>
            <a href="https://github.com/"
              ><img src="../assets/github.png" />github
            </a>
          </p>
          <p>
            <a href="https://gitee.com/BUNAO_SIR">
              <img src="../assets/gitee.png" />gitee</a
            >
          </p>
        </div>
        <button @click="mess"><i class="iconfont icon-liuyan1"></i> 留言</button>
      </div>
    </div>
  </div>
</template>

<script>
import imgsun from '../assets/sun.png'
import imgmoon from '../assets/moon.png'

export default {
  data() {
    return {
      temp:true,
      //引入图片不能直接，必须通过 import imgsun from '../assets/sun.png' 然后 imgsrc:imgsun
      //或者 imgsrc:require('../assets/sun.png')
      imgsrc:imgmoon
      // imgsrc:require('../assets/sun.png')
    }
  },
  methods: {
    actived(){

    },
    changeback(){
      console.log(imgmoon);
      const res=document.querySelector('body')
      console.log(this.$store.state.changeback);
      this.$store.state.changeback=!this.$store.state.changeback
        if(this.$store.state.changeback){
          this.imgsrc=imgmoon
          res.style.backgroundColor='white'
           res.style.color='black'
        }else{
          this.imgsrc=imgsun
          res.style.backgroundColor='black'
           res.style.color='white'
        }
    },
    change() {
      console.log(this.$store.state.toast);
      this.$store.state.toast = true;
    },
    mess() {
      console.log("123");
      console.log(this.$store.state.mess);
      this.$store.state.mess = true;
    },
  },
  // mounted() {
  //   var ipt = document.querySelector(".search");
  //   console.log(ipt);
  //   ipt.addEventListener("input", function () {
  //     console.log("123");
  //   });
  // },
};
</script>

<style lang="less" scoped>

.headers {
  display: flex;
  user-select: none;
  z-index: 1;
  width: 100%;
  // height: 10%;
  // height: 50px;
  height: 5%;
  justify-content: space-between;
  align-items: center;
  filter: 1px;
  // background-color: white;
  // background-color: black;
  background-color: inherit;
  // color: rgb(255, 255, 255);
  color: inherit;

  h1 {
    cursor: pointer;
    font-size: 40px;
    font-weight: 300;
    font-style: italic;
    // color: rgb(49, 129, 234);
    color: #00c438;
    margin-left: 5%;
  }
  .more {
    color: inherit;
    display: flex;
    align-items: center;
    img{
      cursor: pointer;
      width: 40px;
      height: 40px;
    }
    margin-right: 5%;
    button {
      // color: white;
      color: inherit;
      width: 65px;
      height: 35px;
      text-decoration: none;
      border-radius: 10px;
      border: none;
      margin: 0 20px;
      background-color: transparent;
      transition: linear 0.1s;
    }
    button:hover {
      color: #00c438;
    }
    .git:hover + .gitinfo {
      display: block;
    }
    .gitinfo {
      position: absolute;
      width: 100px;
      height: 100px;
      background-color: rgb(255, 255, 255);
      box-shadow: 2px 2px 2px 2px rgb(203, 203, 203);
      top: 5%;
      left: 81.5%;
      border-radius: 2px;
      display: none;
      &:hover {
        display: block;
      }
      p {
        display: flex;
        // margin-left: 30px;
        padding: 12px 10px;
        justify-content: space-around;
        a {
          // color: #070707;
          color: inherit;
          &:hover {
            color: rgb(70, 178, 70);
          }
        }
        img {
          width: 20px;
          height: 20px;
        }
      }
    }
  }
}
.search {
  border-radius: 10px;
  outline: none;
  border: 1px solid rgb(202, 202, 202);
  text-indent: 1em;
  height: 30px;
  width: 200px;
}
.serchcontent {
  width: 201px;
  position: absolute;
  margin-left: 407px;
  margin-top: 70px;
  border: 1px solid rgb(202, 202, 202);
  border-top: none;
  padding-top: 10px;
  background-color: white;
}
</style>