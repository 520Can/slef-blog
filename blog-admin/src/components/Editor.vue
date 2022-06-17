<template>
  <div class="editor">
    <div id="editorcontext"></div>
  </div>
</template>

<script>
// 引入 wangEditor
import wangEditor from "wangeditor";
export default {
  data() {
    return {
      editor: null,
      editorData: "",
    };
  },
  mounted() {
    const editor = new wangEditor(`#editorcontext`);
    // 配置 onchange 回调函数，将数据同步到 vue 中
    editor.config.onchange = (newHtml) => {
      this.editorData = newHtml;
    };
    // 创建编辑器
    editor.create();
    this.editor = editor;
  },
  methods: {
    getEditorData() {
      // 通过代码获取编辑器内容
      let data = this.editor.txt.html();
      alert(data);
    },
  },
  beforeDestroy() {
    // 调用销毁 API 对当前编辑器实例进行销毁
    this.editor.destroy();
    this.editor = null;
  },
};
</script>

<style lang="less">
.editor {
  width: 100%;
  margin: auto;
  position: relative;
  .btn {
    position: absolute;
    right: 0;
    top: 0;
    padding: 5px 10px;
    cursor: pointer;
  }
  h3 {
    margin: 30px 0 15px;
  }
}
.test {
  width: 100%;
  height: 300px;
  border: 1px solid grey;
}
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
