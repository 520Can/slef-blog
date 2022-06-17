<template>
  <div v-show="refresh">
    <el-button type="primary" @click="addmanger">添加管理员</el-button>
    <table>
      <tr>
        <th>管理员</th>
        <th>注册时间</th>
        <th>操作</th>
      </tr>
      <tr class="tbody" v-for="item in mdata" :key="item._id" v-show="refresh">
        <td>{{ item.username }}</td>
        <td>{{ item.date.substr(0,10) }}</td>
        <td>
          <!-- <el-button type="success" icon="el-icon-edit"></el-button> -->
          <el-button
            type="danger"
            plain
            icon="el-icon-delete"
            @click="delbtn(item._id)"
          ></el-button>
          <el-button
            type="primary"
            icon="el-icon-edit"
            plain
            @click="updateuserinfo"
          ></el-button>
          <p>{{ item.id }}</p>
        </td>
      </tr>
    </table>

    <el-dialog title="添加管理员" :visible.sync="dialogFormVisible">
      <el-form>
        <el-form-item
          label="用户名"
          :label-width="formLabelWidth"
          v-show="updated"
        >
          <el-input v-model="username" autocomplete="off"></el-input>
        </el-form-item>
        <el-form-item
          label="密码"
          :label-width="formLabelWidth"
          v-show="updated"
        >
          <el-input v-model="password" autocomplete="off"></el-input>
        </el-form-item>
        <el-form-item label="昵称" :label-width="formLabelWidth">
          <el-input
            v-model="nackname"
            autocomplete="off"
          ></el-input> </el-form-item
        ><el-form-item label="自我评价" :label-width="formLabelWidth">
          <el-input
            v-model="evaluate"
            autocomplete="off"
          ></el-input> </el-form-item
        ><el-form-item label="毕业院校" :label-width="formLabelWidth">
          <el-input
            v-model="graduate"
            autocomplete="off"
          ></el-input> </el-form-item
        ><el-form-item label="手机号" :label-width="formLabelWidth">
          <el-input
            v-model="phone"
            autocomplete="off"
          ></el-input> </el-form-item
        ><el-form-item
          label="邮箱"
          :label-width="formLabelWidth"
          @keyup.enter.native="managerAdd"
        >
          <el-input v-model="email" autocomplete="off"></el-input>
        </el-form-item>
      </el-form>
      <div slot="footer" class="dialog-footer">
        <el-button @click="dialogFormVisible = false">取 消</el-button>
        <el-button type="primary" @click="managerAdd()">确 定</el-button>
      </div>
    </el-dialog>
  </div>
</template>

<script>
import {
  usersignupAPI,
  userlistAPI,
  userdelAPI,
  userputAPI,
} from "../../api/index";
//   let res = await registeUserAPI(this.username, this.password);
export default {
  data() {
    return {
      mdata: [],
      dialogFormVisible: false,
      formLabelWidth: "120px",
      username: "",
      password: "",
      newdate: "",
      nackname: "",
      evaluate: "",
      graduate: "",
      phone: "",
      email: "",
      refresh: true,
      updated: true,
      currentId: "",
    };
  },

  methods: {
    //添加管理员
    addmanger() {
      this.dialogFormVisible = true;
      this.updated = true;
    },
    //更新用户信息
    async updateuserinfo() {
      this.dialogFormVisible = true;
      this.updated = false;
      var res = await userputAPI(
        this.currentId,
        this.nackname,
        this.evaluate,
        this.graduate,
        this.phone,
        this.email
      );
      console.log("updateuserinfo");
      console.log(res);
    },
    delbtn(id) {
      this.currentId = id;
      console.log(this.currentId);
      this.$confirm("此操作将永久删除该管理员, 仍然删除吗", "提示", {
        confirmButtonText: "确定",
        cancelButtonText: "取消",
        type: "warning",
      })
        .then(async () => {
          // console.log(id);
          await userdelAPI(id);
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
    //正则表达式判断手机号或联系方式是否正确
    regexp() {
      console.log("1");
    },
    async managerAdd() {
      console.log(this.updated);
      if (this.updated) {
        this.newdate = new Date();
        if (this.username == "" || this.password == "") {
          this.$message.error("用户名或密码不为空");
        } else {
          await usersignupAPI(
            this.username,
            this.password,
            this.newdate,
            this.nackname,
            this.evaluate,
            this.graduate,
            this.phone,
            this.email
          );
          this.$store.state.managerrefresh++;
          this.$message({
            message: "添加管理员成功",
            type: "success",
          });
        }
        this.dialogFormVisible = false;
        this.$forceUpdate();
      } else {
        var res = await userputAPI(
          this.currentId,
          this.nackname,
          this.evaluate,
          this.graduate,
          this.phone,
          this.email
        );
        console.log(123);
        this.$store.state.managerrefresh++;
        console.log(res);
      }
    },
  },

  async mounted() {
    let res = await userlistAPI();
    this.mdata = res.data.data;
  },
  //   var date=new Date()
};
</script>

<style lang='less' scoped>
.comment {
  color: black;
}

table td,
table th {
  border-bottom: 0.5px solid rgb(240, 240, 240);
  padding: 20px 0px;
  padding-right: 230px;
  padding-left: 20px;
  min-width: 130px;
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