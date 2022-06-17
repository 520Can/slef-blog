<template>
  <div class="header">
    <div class="innerheader">
      <nav>首页</nav>
      <i class="el-icon-switch-button" @click="loginout"></i>
    </div>
  </div>
</template>

<script>
export default {
  methods: {
    loginout() {
      this.$confirm("是否进行退出登录？", "确认信息", {
        distinguishCancelAndClose: true,
        cancelButtonText: "取消",
        confirmButtonText: "退出",
      })
        .then(() => {
          this.$router.replace("/login");
          localStorage.removeItem("username");
          localStorage.removeItem("password");
          this.$message({
            type: "info",
            message: "保存修改",
          });
        })
        .catch((action) => {
          this.$message({
            type: "info",
            message: action === "cancel" ? "用户取消操作" : "您已成功退出",
          });
        });
    },
  },
};
</script>

<style lang="less" scoped>
.header {
  // background-color: blue;
  width: 100%;
  height: 50px;
  .innerheader {
    width: 90%;
    // height: 30px;
    height: 50px;
    // padding-top: 10px;
    margin: 15px auto;
    border-radius: 10px;
    border: 0.1px solid #b3d8ff;
    display: flex;
    align-items: center;
    justify-content: space-between;
    padding: 0 20px;
    i {
      // line-height: 50px;
      font-size: 30px;
      color: #409eff;
      &:hover {
        color: rgb(138, 132, 132);
      }
    }
  }
}
</style>