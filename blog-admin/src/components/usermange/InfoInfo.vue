<template>
  <div class="infoinfo">
    <div class="edit">
      <el-form ref="form" :model="form" label-width="80px">
        <el-form-item label="文章标题">
          <el-input
            v-model.trim="form.title"
            placeholder="请输入文章标题"
          ></el-input>
        </el-form-item>
        <el-form-item label="文章作者">
          <el-input
            v-model.trim="form.author"
            placeholder="请输入您的昵称"
          ></el-input>
        </el-form-item>
        <el-form-item label="文章分类" label-width="80px">
          <el-select v-model.trim="form.sort" placeholder="请选择文章类型">
            <el-option label="代码" value="代码"></el-option>
            <el-option label="人生" value="人生"></el-option>
            <el-option label="面试题" value="面试题"></el-option>
            <el-option label="插件/软件" value="插件/软件"></el-option>
            <el-option label="有用的知识" value="有用的知识"></el-option>
          </el-select>
        </el-form-item>
        <el-form-item label="创建时间">
          <el-date-picker
            v-model="form.time"
            type="datetime"
            placeholder="选择日期时间"
          >
          </el-date-picker>
        </el-form-item>
      </el-form>
    </div>
    <div class="editor">
      <div id="editorcontext"></div>
    </div>

    <div class="options">
      <el-button type="primary" @click="getEditorData">立即创建</el-button>
      <el-button>取消</el-button>
    </div>
  </div>
</template>
<script>
// 引入 wangEditor
import wangEditor from "wangeditor";

import { articleupAPI } from "../../api/index";
export default {
  data() {
    return {
      //element数据源
      form: {
        //创建时间
        time: "",
        //作者
        author: "",
        //文章标题
        title: "",
        //文章分类
        sort: "",
        // 文章权限
        author: "",
      },
      //wangeditor编辑器数据源
      editor: null,
      editorData: "",
      //
    };
  },
  methods: {
    async getEditorData() {
      // 通过代码获取编辑器内容
      let data = this.editor.txt.html();
      if (
        this.form.title == "" ||
        this.form.author == "" ||
        this.form.sort == "" ||
        this.form.time == ""
      ) {
        // this.$message({
        //   message: "添加失败，不允许提交空字符",
        //   type: "fail",
        // });
        this.$message.error("添加失败，不允许提交空字符");
        return;
      }
      await articleupAPI(
        this.form.title,
        this.form.author,
        this.form.sort,
        this.form.time,
        data
      );
      this.$store.state.managerrefresh++;
      //通过给组件添加key值，改变key值刷新当前组件
      this.$message({
        message: "添加成功，您已成功创建该文章",
        type: "success",
      });
    },
  },
  mounted() {
    // console.log(this.$store.state.managerrefresh);
    const editor = new wangEditor(`#editorcontext`);
    // 配置 onchange 回调函数，将数据同步到 vue 中
    editor.config.onchange = (newHtml) => {
      this.editorData = newHtml;
    };
    // 创建编辑器
    editor.create();
    this.editor = editor;
  },
  beforeDestroy() {
    // 调用销毁 API 对当前编辑器实例进行销毁
    this.editor.destroy();
    this.editor = null;
  },
};
</script>

<style lang="less">
.edit {
  width: 50%;
}
.options {
  margin: 30px 20px;
  display: flex;
  justify-content: right;
}
.w-e-menu {
  z-index: 2 !important;
}
.w-e-text-container {
  z-index: 1 !important;
  color: black;
}
.w-e-toolbar {
  z-index: 2 !important;
}
// editor样式
// table {
//   border: none;
//   border-collapse: collapse;
// }
// table td,
// table th {
//   border: 1px solid #ccc;
//   padding: 3px 5px;
//   min-width: 50px;
//   height: 20px;
// }
// table th {
//   border-right: 1px solid #ccc;
//   border-bottom: 2px solid #ccc;
//   text-align: center;
//   background-color: #f1f1f1;
// }
// blockquote {
//   display: block;
//   border-left: 8px solid #d0e5f2;
//   padding: 5px 10px;
//   margin: 10px 0;
//   line-height: 1.4;
//   font-size: 100%;
//   background-color: #f1f1f1;
// }
// code {
//   display: inline-block;
//   *display: inline;
//   *zoom: 1;
//   background-color: #f1f1f1;
//   border-radius: 3px;
//   padding: 3px 5px;
//   margin: 0 3px;
// }
// pre code {
//   display: block;
// }
// ul,
// ol {
//   margin: 10px 0 10px 20px;
// }
// pre {
//   border: 1px solid #ccc;
//   background-color: #f8f8f8;
//   padding: 10px;
//   margin: 5px 0px;
//   font-size: 0.8em;
//   border-radius: 3px;
// }
</style>