<template>
  <div class="usermess">
    <div class="mess" v-for="item in data" :key="item._id">
      <!-- <div class="mess"> -->
      <div class="left">
        <img class="headimg" :src="item.headimg" />
        <div class="leftright">
          <div class="nackname">
            <h1>{{ item.nackname }}</h1>
            <span>给你留言了</span>
          </div>
          <p>{{ item.content }}</p>
          <div class="func">
            <span>{{ item.date.substr(0,10) }}</span>
            <span>联系方式: {{ item.link }}</span>
            <span @click="delone(item._id)"
              ><i class="el-icon-delete"></i> 删除该留言</span
            >
          </div>
        </div>
      </div>

      <!-- <img src="http://t14.baidu.com/it/u=2798441099,585499214&fm=224&app=112&f=JPEG?w=500&h=500" alt=""> -->
    </div>
  </div>
</template>

<script>
import { messlistAPI, messdelAPI } from "../../api/index";
export default {
  data() {
    return {
      data: [1, 2, 3, 4, 5, 6],
      nackname: "不闹",
    };
  },
  async mounted() {
    var res = await messlistAPI();
    this.data = res.data.data;
  },
  methods: {
    delone(id) {
      this.$confirm("此操作将永久删除该留言, 是否继续?", "提示", {
        confirmButtonText: "确定",
        cancelButtonText: "取消",
        type: "warning",
      })
        .then(async () => {
          await messdelAPI(id);
          this.$store.state.managerrefresh++;
          this.$message({
            type: "success",
            message: "删除成功!",
          });
        })
        .catch(() => {
          this.$message({
            type: "info",
            message: "已取消删除",
          });
        });
    },
  },
};
</script>

<style lang="less" scoped>
.mess {
  width: 100%;
  height: 150px;
  border-radius: 10px;
  border: 0.1px solid rgb(244, 244, 244);
  margin-bottom: 10px;
  cursor: pointer;
  .left {
    height: 100%;
    display: flex;
    align-items: center;
    margin-left: 20px;
    .headimg {
      cursor: pointer;
      width: 50px;
      height: 50px;
      border-radius: 50%;
      background-color: gainsboro;
      // background-image: url("http://t14.baidu.com/it/u=2798441099,585499214&fm=224&app=112&f=JPEG?w=500&h=500");
      background-size: 50px 50px;
      // color: white;
      text-align: center;
      line-height: 50px;
      font-size: 20px;
      &:active {
        transform: scale(1.5);
      }
    }
    .leftright {
      display: flex;
      height: 120px;
      width: 600px;
      flex-direction: column;
      justify-content: space-around;
      margin-left: 20px;
      .nackname {
        display: flex;
        align-items: center;
        h1 {
          font-weight: 700;
          font-size: 20px;
          margin-right: 20px;
          &:hover {
            color: #409eff;
          }
        }
      }
      .func {
        display: flex;
        width: 550px;
        height: 20px;
        span {
          display: block;
          margin-right: 30px;
          color: #999999;
          &:last-child {
            display: none;
          }
          &:hover {
            color: #409eff;
          }
        }
      }
    }
  }

  &:hover {
    border: 0.1px solid rgb(244, 244, 244);
    box-shadow: 4px 4px 2px 2px rgb(244, 244, 244);
  }
  &:hover .left .leftright .func span:last-child {
    // color: #409eff;
    display: block;
  }
}
</style>