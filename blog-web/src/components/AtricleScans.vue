<template>
  <div class="atriclescans">
    <h1 class="title">{{ list.title }}</h1>
    <p class="articleinfo">
      {{ list.author }} <span>{{ list.time }}</span
      ><span>{{ list.sort }}</span>
    </p>
    <div class="content" v-html="list.article"></div>

    <a class="questcomm" href="#tocomment">看完了,评论一下?</a>

    <!-- //评论列表 -->
    <div class="comment">
      <h2>评论({{ commlist.length }}条)</h2>
      <div class="usercomm">
        <div class="nocomm" v-show="!commlist.length">暂无评论</div>
        <div class="user" v-for="item in commlist" :key="item._id">
          <span class="username">{{ item.username}} </span>
          <span class="commed">评论说</span>

          <p>{{ item.content }}</p>
        </div>
      </div>
    </div>
    <!-- 评论 -->
    <div id="tocomment">
      <h1>我要评论</h1>
      <span class="youname">您的姓名:</span> <br />
      <input type="text" v-model="usersname" placeholder="让别人更了解你" />
      <span>=>必填,不一定是真名</span><br />
      <span class="yousay">您想要说:</span> <br />
      <!-- <input type="textarea" placeholder="我想说" /> -->
      <textarea
        cols="127"
        rows="10"
        placeholder="我想说"
        v-model="userscomm"
      ></textarea>
      <br />
      <button @click="submits">发表</button>
    </div>
  </div>
</template>

<script>
import { getCommentListAPI, postCommentListAPI } from "../api/index";
export default {
  data() {
    return {
      list: [],
      comm: [],
      usersname: "",
      userscomm: "",
      commlist:[]
    };
  },
  methods: {
    async submits() {
      if (this.usersname == "" || this.userscomm == "") {
        return alert("姓名或评论内容为空！");
      }
      var date = new Date();
      var status = false;
       await postCommentListAPI(
        this.usersname,
        this.list.title,
        this.userscomm,
        date,
        status
      );
      this.$store.state.refresh++;
      alert("评论成功，等待管理员审核");
      this.usersname = "";
      this.userscomm = "";
    },
  },
  async mounted() {
    
    var res = await getCommentListAPI();
    this.comm = res.data.data;
    //筛选状态为true的评论
   let temp= res.data.data.filter(item=>item.status==true)

// 从状态为true的评论筛选出本章的评论
   let result= temp.filter(item=>{
    return  item.articleTitle==this.$store.state.currentTitle
    })
    console.log(result);
    this.commlist=result
    this.list = this.$store.state.passlist;
  },
};
</script>

<style scoped>
.atriclescans {
  position: absolute;
  position: absolute;
  left: 50%;
  transform: translateX(-50%);
  padding: 100px;
  overflow: hidden;
}
.title::before {
  position: absolute;
  content: "";
  margin-left: -20px;
  margin-top: 2px;
  width: 8px;
  height: 40px;
  background: rgb(28, 210, 83);
}
.articleinfo {
  display: flex;
  justify-content: space-around;
  width: 400px;
  height: 40px;
  padding: 50px 0;
  line-height: 40px;
  color: rgb(127, 127, 127);
}
.content {
  width: 1000px;
  /* color: rgb(73, 73, 73); */
}
/* .content >>> p {
  color: green;
}
.content >>> h3 {
  color: red;
} */
/* editor样式 */
.content >>> * {
  /* margin: 10px 0; */
  margin-bottom: 10px;
  /* line-height: 20px; */
}
.content >>>h1,h2,h3,h4,h5,h6{
  padding: 10px;
  margin-bottom: 20px;
}
.content >>> table {
  border: none;
  border-collapse: collapse;
}
.content >>> table td,
table th {
  border: 1px solid #ccc;
  padding: 3px 5px;
  min-width: 50px;
  height: 20px;
}
.content >>> table th {
  border-right: 1px solid #ccc;
  border-bottom: 2px solid #ccc;
  text-align: center;
  background-color: #f1f1f1;
}
.content >>> blockquote {
  display: block;
  color: rgb(4, 151, 63);
  border-left: 8px solid #d0e5f2;
  padding: 5px 10px;
  margin: 10px 0;
  /* line-height: 1.4; */
  font-size: 100%;
  border-radius: 5px;
  margin: 5px;
  background-color: #f1f1f1;
}
.content >>> code {
  display: inline-block;
  *display: inline;
  *zoom: 1;
  background-color: #f1f1f1;
  border-radius: 3px;
  padding: 3px 5px;
  margin: 0 3px;
}
.content >>> pre code {
  display: block;
}
.content >>> ul,
ol {
  list-style: none;
  margin: 10px 0 10px 20px;
}
.content >>> pre {
  border: 1px solid #ccc;
  background-color: #f8f8f8;
  padding: 10px;
  margin: 5px 0px;
  font-size: 0.8em;
  border-radius: 3px;
}

.questcomm {
  float: right;
  padding: 30px;
}
.comment {
  margin-top: 100px;
}
.comment h2 {
  padding-top: 50px;
  /* border-top: dashed 1px red; */
}
.usercomm {
  width: 100%;
  /* height: 50px; */
  /* background-color: red; */
}
.user {
  /* border: 1px solid grey; */
  border-bottom: 1px dashed grey;
  margin: 20px 0;
  /* height: 80px; */
}
.user p {
  margin: 30px;
  font-size: 20px;
}
.username {
  font-style: italic;
  font-weight: 700;
}
.commed {
  font-size: 25px;
  margin-left: 30px;
}
#tocomment {
  width: 100%;
  height: 500px;
  /* background-color: red; */
  border: 1px solid grey;
  border-radius: 20px;
  padding: 30px;
}
h1 {
  padding-bottom: 30px;
  border-bottom: dashed 1px grey;
}
input {
  border: 1px solid rgb(188, 188, 188);
  width: 300px;
  height: 40px;
  outline: none;
  text-indent: 1em;
  /* margin-top: 30px; */
  border-radius: 10px;
}
span {
  color: rgb(114, 114, 114);
}
.youname,
.yousay {
  display: block;
  margin-top: 40px;
  /* margin-top: 30px; */
}
textarea {
  border-radius: 10px;
  text-indent: 1em;
  outline: none;
}
button {
  float: right;
  margin-right: 80px;
  margin-top: 40px;
  padding: 10px 25px;
  border: none;
  background-color: rgb(96, 205, 96);
  border-radius: 5px;
}
button:hover {
  opacity: 0.8;
}
.nocomm{
  height: 100px;
  line-height: 100px;
  padding: 20px;
  font-size: 30px;
}
</style>