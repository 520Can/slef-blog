<template>
  <div class="selfinfo">
    <div class="leftinfo">
      <img class="headimg" :src="resouse" alt="个人头像" />
      <img class="wximg" src="../../assets/wx.png" alt="" />
      <div class="nackname">
        <span>{{ nackname }}/</span>
        <span>{{ engname }}</span>

        <div class="takedown">
          <span>最开心的就是 ⬇️</span>
        </div>
        <div class="selselfevaluationfassessment">
          <h1>自我评价</h1>
          <h2>Self Evaluation</h2>
          <p>
            人的知识,才能通常是处于离散,朦胧状态需要人们不断地挖掘,发现和开发。
          </p>
          <p>
            每个人从自身兴趣爱好,思维方式的特点,毅力的恒久性,已有的知识结构,献身精神等方面可以作出自我评价。
          </p>
        </div>
      </div>
    </div>
    <div class="rightinfo">
      <div class="professionalinfo">
        <h1>个人信息</h1>
        <h2>Professional Infomation</h2>
      </div>
      <div class="gradulationinfo">
        <div class="schollinfo">
          <i class="el-icon-school"></i>
          <span>西南科技大学城市学院 / 计算机科学与技术</span>
        </div>
        <div class="schollinfo">
          <i class="el-icon-mobile-phone"></i>
          <span>176—2868—9079</span>
        </div>
        <div class="schollinfo">
          <i class="el-icon-message"></i>
          <span>952133606@qq.com</span>
        </div>
      </div>
      <div class="skill">
        <h1>专业技能</h1>
        <h2>Professional skill</h2>
        <div class="skillimg">
          <img src="../../assets/skill1.png" />
          <img src="../../assets/skill5.png" />
          <img src="../../assets/skill2.png" />
          <img src="../../assets/skill3.png" />
          <img src="../../assets/skill4.png" />
          <img src="../../assets/skill6.png" />
          <img src="../../assets/skill7.png" />
          <img src="../../assets/skill8.png" />
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import { userlistAPI } from "../../api/index";
export default {
  data() {
    return {
      resouse:
        "https://img1.baidu.com/it/u=137044454,4224140026&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=500",
      nackname: "不闹",
      engname: "cheer chen",
      userinfo: [],
    };
  },
  methods: {
    async getuserinfo() {
      var res = await userlistAPI();
      this.userinfo = res.data.data;
    },
  },
  mounted() {
    this.getuserinfo();
  },
};
</script>

<style lang='less' scoped>
h1 {
  font-size: 25px;
}
.selfinfo {
  display: flex;
  .leftinfo {
    .headimg {
      width: 100px;
      height: 100px;
      border-radius: 50px;
      margin: 30px 30px 0px 30px;
      border: transparent solid 1px;
      transition: 0.5s linear;
      &:hover {
        // border-radius: 50%;
        border: blue solid 1px;
      }
    }
    .wximg {
      width: 100px;
      height: 100px;
      margin-left: 100px;
      &:hover {
        transform: scale(1.5);
      }
    }
    // .demo {
    //   width: 300px;
    //   height: 200px;
    // }
    .takedown {
      span {
        margin-left: 140px;
      }
      margin-top: 40px;
      width: 400px;
      height: 200px;
      background-image: url("../../assets/dog.gif");
      background-size: 400px 200px;
      background-repeat: no-repeat;
      border-radius: 30px;
      // opacity: 0.5;
      &:hover {
        transform: rotateY(180deg);
      }
    }
    .nackname {
      margin-left: 20px;
      // margin-top: 10px;
      span {
        color: #409eff;
        font-family: 幼圆;
      }
    }
    .selselfevaluationfassessment {
      margin: 40px 20px;
      h1,
      h2,
      p {
        color: #409eff;
        margin: 15px 0;
      }
      p {
        display: block;
        width: 430px;
        margin: 0 0;
        line-height: 25px;
      }
    }
  }
  .rightinfo {
    margin-left: 140px;
    width: 300px;
    .professionalinfo {
      margin-top: 50px;

      h1,
      h2 {
        color: #409eff;
        margin: 15px 0;
      }
    }
    .gradulationinfo {
      margin-top: 40px;
      .schollinfo {
        margin: 10px 0;
        display: flex;
        align-items: center;
        i {
          font-size: 30px;
          margin-right: 10px;
        }
        &:nth-child(n) {
          color: #409eff;
        }
      }
    }
    .skill {
      margin-top: 125px;
      h1,
      h2 {
        color: #409eff;
        margin: 15px 0;
      }
      .skillimg {
        width: 100%;
        height: 20px;
        // background-color: red;
        display: flex;
        flex-wrap: wrap;
        img {
          height: 20px;
          margin: 10px 30px 10px 0;
        }
        // .img3 {
        //   height: 50px;
        // }
      }
    }
  }
}
</style>