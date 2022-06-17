<template>
  <div class="comment">
    <table>
      <tr>
        <th>用户</th>
        <th>评论文章</th>
        <th>评论内容</th>
        <th width=100>评论时间</th>
        <th >评论状态</th>
        <th>操作</th>
      </tr>
      <tr class="tbody" v-for="item in data" :key="item._id">
        <td>{{ item.username }}</td>
        <td>{{ item.articleTitle }}</td>
        <td>{{ item.content }}</td>
        <td>{{ item.date.substr(0,10) }}</td>
        <td>
          <el-switch
            v-model="item.status"
            active-text="允许"
            inactive-text="隐藏"
            @change="statusChange(item._id, item.status)"
          >
          </el-switch>
        </td>
        <td>
          <el-button
            plain
            type="danger"
            icon="el-icon-delete"
            @click="delone(item._id, item.status)"
          ></el-button>
        </td>
      </tr>
    </table>
  </div>
</template>

<script>
import { commlistAPI, commdelAPI, commputAPI } from "../../api/index";
export default {
  data() {
    return {
      data: [],
    };
  },
  methods: {
    async statusChange(id, status) {
      console.log(id, status);
      await commputAPI(id, status);
    },
    delone(id) {
      this.$confirm("此操作将永久删除该评论, 是否继续?", "提示", {
        confirmButtonText: "确定",
        cancelButtonText: "取消",
        type: "warning",
      })
        .then(async () => {
          await commdelAPI(id);
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
  async mounted() {
    let res = await commlistAPI();
    // console.log(res.data.data);
    this.data = res.data.data;
  },
};
</script>

<style lang='less' scoped>
.comment {
  color: black;
}

table td,
table th {
  border-bottom: 0.5px solid rgb(240, 240, 240);
  padding: 20px 40px;
  min-width: 50px;
  height: 20px;
  color: #606266;
}
table th {
  text-align: center;
  font-weight: 700;
  color: #909399;
  //   background-color: #f1f1f1;
}
table .tbody {
  &:hover {
    background-color: #f5f7fa;
  }
}
</style>