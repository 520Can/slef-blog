<template>
  <div class="login">
    <div class="userinput">
      <p>博客管理系统</p>
      <h2>用 户</h2>
      <el-input v-model="username" placeholder="请输入管理员账户"></el-input>
      <h2>密 码</h2>
      <el-input
        v-model="password"
        placeholder="请输入密码"
        @keyup.enter.native="loginhome"
      ></el-input>

      <div class="buttons">
        <el-button plain @click="reset">重置</el-button>
        <el-button type="primary" @click="loginhome">登录</el-button>
      </div>
    </div>
  </div>
</template>

<script>
import { userlistAPI, userLoginAPI } from "../api/index";
export default {
  data() {
    return {
      username: "",
      password: "",
      loginarr: [],
    };
  },
  methods: {
    // async getuserinfo() {
    //   var res = await userlistAPI();
    //   this.loginarr = res.data.data;
    //   console.log(this.loginarr);
    // },
    reset() {
      (this.username = ""), (this.password = "");
    },
    async loginhome() {
      var res = await userLoginAPI(this.username, this.password);
      console.log(res.data.data);
      // if(res.data.data)
      if (res.data.data.status) {
        localStorage.username = this.username;
        localStorage.password = this.password;
        this.$router.replace("/home");
        this.$message({
          //   showClose: true,
          message: "登陆成功",
          type: "success",
          center: true,
        });
      } else {
        // this.$router.replace("/login");
        if (res.data.data.code == -1) {
          this.$message({
            //   showClose: true,
            message: "该用户不存在，请联系管理员添加",
            type: "error",
            center: true,
          });
          return;
        }
        this.$message({
          //   showClose: true,
          message: "密码错误，请联系管理员修改",
          type: "error",
          center: true,
        });
        return;
      }
    },
  },
  mounted() {
    // this.getuserinfo();
  },
};
</script>

<style lang="less" scoped>
.login {
  .userinput {
    position: fixed;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    padding: 60px 80px;
    border: rgb(236, 236, 236) 0.1px solid;
    border-radius: 10px;
    display: flex;
    flex-direction: column;
    justify-content: space-around;
    // margin: 10% auto 0 auto;
    width: 400px;
    height: 300px;
    transition: 0.2s linear;
    &:hover {
      box-shadow: 3px 3px 5px 1px rgb(196, 214, 238);
    }
    p {
      color: rgb(121, 196, 225);
      text-align: center;
      font-size: 25px;
    }
    .buttons {
      display: flex;
      justify-content: space-around;
      margin: 20px 0;
    }
  }
}
</style>