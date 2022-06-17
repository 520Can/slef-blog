<template>
  <div class="articinfo">
    <el-button type="primary" @click="$router.push('/infoinfo')"
      ><i class="el-icon-upload el-icon--right"></i> 添加</el-button
    >

    <table class="tables">
      <tr>
        <th>创建时间</th>
        <th>作者</th>
        <th>标题</th>
        <th>操作</th>
      </tr>
      <tr class="tbody" v-for="item in tableData" :key="item._id">
        <!-- v-for="(item, index) in tableData"
        :key="index + item._id" -->
        <td>{{ item.time.substring(0,10) }}</td>
        <td>{{ item.author }}</td>
        <td>{{ item.title }}</td>
        <td>
          <!-- <el-button type="success" icon="el-icon-edit"></el-button> -->
          <el-button
            type="success"
            icon="el-icon-search"
            @click="search(item._id)"
            plain
          ></el-button>
          <!-- <el-button
          type="primary"
          plain
          icon="el-icon-edit"
          @click="editthesomeadaassasadass"
        ></el-button
        > -->
          <el-button
            type="danger"
            plain
            icon="el-icon-delete"
            @click="deldate(item._id)"
          ></el-button>
          <p>{{ item.id }}</p>
        </td>
      </tr>
    </table>
    <!-- <div class="boxtest">
      <el-pagination
        :page-size="7"
        :pager-count="11"
        layout="prev, pager, next"
        :total="tableData.length"
      >
      </el-pagination>
    </div> -->

    <el-dialog title="文章信息" :visible.sync="dialogFormVisible">
      <el-descriptions class="margin-top" :column="1">
        <template slot="extra"> </template>
        <el-descriptions-item label="创建日期">{{
          currenttime
        }}</el-descriptions-item>
        <el-descriptions-item label="作者">{{
          currentname
        }}</el-descriptions-item>
        <el-descriptions-item label="文章">{{
          currenttitle
        }}</el-descriptions-item>
        <el-descriptions-item label="分类">
          <el-tag size="small">{{ currentsort }}</el-tag>
        </el-descriptions-item>
        <el-descriptions-item label="内容">
          <div class="articess" v-html="currentarticle"></div
        ></el-descriptions-item>
      </el-descriptions>
      <div slot="footer">
        <el-button type="primary" @click="dialogFormVisible = false"
          >已 阅</el-button
        >
      </div>
    </el-dialog>
  </div>
</template>

<script>
import { articlelistAPI, articledelAPI } from "../../api/index";
export default {
  data() {
    return {
      dialogFormVisible: false,
      tableData: [],
      currenttitle: "",
      currenttime: "",
      currentarticle: "",
      currentname: "",
      currentsort: "",
    };
  },
  methods: {
    search(id) {
      var items = this.tableData.find((item) => item._id == id);
     var time=items.time.substring(0,10)
      this.currenttitle = items.title;
      this.currenttime = time;
      this.currentarticle = items.article;
      this.currentname = items.author;
      this.currentsort = items.sort;
      this.dialogFormVisible = true;
    },
    tableRowClassName({ row, rowIndex }) {
      if (rowIndex === 1) {
        return "warning-row";
      } else if (rowIndex === 3) {
        return "success-row";
      }
      return "";
    },
    deldate(id) {
      // console.log(id);

      this.$confirm("删除该文章？此操作不可撤销！", "提示", {
        confirmButtonText: "确定",
        cancelButtonText: "取消",
        type: "warning",
      })
        .then(async () => {
          console.log(id);
          await articledelAPI(id);
          this.$store.state.managerrefresh++;
          this.$message({
            type: "success",
            message: "删除成功!",
          });
        })
        .catch(() => {
          this.$message({
            type: "info",
            message: "用户取消",
          });
        });
    },
  },
  async mounted() {
    var res = await articlelistAPI();
    // console.log(res.data.data);
    this.tableData = res.data.data;
  },
};
</script>

<style lang="less" scoped>
.articess {
  // editor样式
  table {
    border: none;
    border-collapse: collapse;
  }
  table td,
  table th {
    border: 1px solid #ccc;
    padding: 3px 5px;
    min-width: 50px;
    height: 20px;
  }
  table th {
    border-right: 1px solid #ccc;
    border-bottom: 2px solid #ccc;
    text-align: center;
    background-color: #f1f1f1;
  }
  blockquote {
    display: block;
    border-left: 8px solid #d0e5f2;
    padding: 5px 10px;
    margin: 10px 0;
    line-height: 1.4;
    font-size: 100%;
    background-color: #f1f1f1;
  }
  code {
    display: inline-block;
    *display: inline;
    *zoom: 1;
    background-color: #f1f1f1;
    border-radius: 3px;
    padding: 3px 5px;
    margin: 0 3px;
  }
  pre code {
    display: block;
  }
  ul,
  ol {
    margin: 10px 0 10px 20px;
  }
  pre {
    border: 1px solid #ccc;
    background-color: #f8f8f8;
    padding: 10px;
    margin: 5px 0px;
    font-size: 0.8em;
    border-radius: 3px;
  }
  img {
    width: 300px;
  }
}

.tables td,
.tables th {
  border-bottom: 0.5px solid rgb(240, 240, 240);
  padding: 15px 0px;
  padding-right: 70px;
  padding-left: 0px;
  min-width: 200px;
  width: 100px;
  color: #606266;
}
.tables th {
  text-align: left;
  font-weight: 500;
  color: #909399;
  //   background-color: #f1f1f1;
}
.tables td {
  width: 100px;
}
.tables .tbody {
  &:hover {
    background-color: #f5f7fa;
  }
}
</style>
