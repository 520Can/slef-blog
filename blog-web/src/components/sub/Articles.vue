<template>
  <div id="articles">
    <!-- <div class="wow fadeIn" data-wow-duration="3s" id="articles"> -->
    <div class="sort">
      <div
        @click="sort(item.props, item.id)"
        :class="item.id == currentid ? 'actived' : ''"
        v-for="item in sortdata"
        :key="item.id"
      >
        {{ item.props }}<span>{{ item.count }}</span>
      </div>
    </div>
    <input
      type="text"
      v-model="userinput"
      @change="userfilter(userinput)"
      @keyup.enter="userfilter(userinput)"
    />
    <button>检索</button>
    <div
      class="article"
      v-for="(item, index) in templist"
      :key="index"
      @click="toarticleScan(item._id)"
    >
      <h2>{{ item.title }}</h2>
      <div class="info">
        <p>{{ item.author }}</p>
        <p>{{ item.time.substr(0,10) }}</p>
        <p>{{ item.sort }}</p>
      </div>

      <!-- <p>{{ item.date }}</p> -->
    </div>
  </div>
</template>

<script>
import { WOW } from "../../assets/style/wow";
import { getArticleListAPI } from "../../api/index";
export default {
  data() {
    return {
      sortdata: [
        {
          id: 1,
          props: "全部",
        },
        {
          id: 2,
          props: "代码",
        },
        {
          id: 3,
          props: "人生",
        },
        {
          id: 4,
          props: "插件/软件",
        },
        {
          id: 5,
          props: "有用的知识",
        },
        {
          id: 6,
          props: "面试题",
        },
      ],
      tempobj: {},
      // 全部文章参数
      listdata: [],
      index: 1,
      templist: [],
      currentid: 1,
      userinput: "",
    };
  },
  methods: {
    userfilter(res) {
      var newres = this.listdata.filter((item) => item.title.includes(res));
      return (this.templist = newres);
    },
    tofilter(res) {
      var newres = this.listdata.filter((item) => item.sort == res);
      return (this.templist = newres);
    },
    sort(sort = "全部", id = 1) {
      this.userinput=''
      this.currentid = id;
      switch (sort) {
        case "全部":
          // this.tofilter(sort);
          this.templist = this.listdata;
          // this.$store.state.refresh++;
          break;
        case "代码":
          this.tofilter(sort);
          break;
        case "人生":
          this.tofilter(sort);
          break;
        case "插件/软件":
          this.tofilter(sort);
          break;
        case "有用的知识":
          this.tofilter(sort);
          break;
        case "面试题":
          this.tofilter(sort);
          break;
        default:
          alert("error");
      }
    },
    toarticleScan(id) {
      this.$store.state.passlist = this.listdata.find((item) => item._id == id);
      this.$store.state.currentTitle=this.listdata.find((item) => item._id == id).title
      console.log( this.$store.state.currentTitle);
      
      this.$router.push({ path: "/atriclescans" });
    },
  },
  async mounted() {
    var res = await getArticleListAPI();
    this.listdata = res.data.data;

    this.sortdata = this.sortdata.map((item) => {
      var counts = this.listdata.filter((subitem) => {
        if (item.props == "全部") {
          return item;
        }
        return subitem.sort == item.props;
      }).length;
      return Object.assign(item, { count: counts });
    });
    // console.log(this.sortdata);

    this.sort("全部");
    this.$nextTick(function () {
      new WOW().init();
    });
  },
};
</script>

<style lang='less' scoped>
#articles {
  width: 90%;
  margin: 0 auto;
  overflow: hidden;
  input {
    text-indent: 1em;
    margin-left: 15%;
    margin-bottom: 5%;
    outline: none;
    width: 20%;
    height: 40px;
    border-radius: 30px;
    border: .1px solid rgb(172, 172, 172);
    &:focus{
      // outline: rgb(127, 237, 127);
      border: .1px solid rgb(95, 151, 86);
    }
  }
  button {
    width: 60px;
    height: 45px;
    border-radius: 5px;
    border: none;
    outline: none;
    margin-left: 20px;
    color: white;
    background-color: rgb(113, 239, 113);
    box-shadow: 2px 2px 2px 2px rgb(238, 238, 238);
    &:hover {
      opacity: 0.8;
    }
    &:active {
      color: rgb(2, 216, 52);
      box-shadow: 0px 0px 1px 1px rgb(238, 238, 238) inset;
    }
  }
  .sort {
    width: 70%;
    margin: 0 auto;
    margin-top: 80px;
    display: flex;
    height: 60px;
    div {
      // width: 40px;
      height: 30px;
      line-height: 30px;
      // background-color: red;
      margin-left: 20px;
      text-align: center;
      border-radius: 5px;
      padding: 5px 15px;
      cursor: pointer;
      transition: 0.2s linear;
      box-shadow: 0 0 2px 2px rgb(244, 244, 244);
      &:hover {
        background-color: rgba(62, 175, 124);
        color: white;
      }
    }
    span {
      display: inline-block;
      background-color: rgb(136, 253, 117);
      padding: 0 10px;
      line-height: 30px;
      border-radius: 5px;
      margin-left: 10px;
    }
  }
  .article {
    overflow: hidden;
    margin: 0 auto;
    width: 70%;
    // border-bottom: 1px dashed rgb(192, 192, 192);
    border: 1px solid rgb(230, 230, 230);
    border-radius: 5px;
    // transition: 0.2s linear;
    margin-bottom: 10px;
    &:hover {
      border-bottom: 1px dashed transparent;
      cursor: pointer;
      border-radius: 10px;
      // transform: scale(1.1);
      box-shadow: 4px 4px 3px 2px rgb(213, 213, 213);
    }

    h2 {
      margin-top: 30px;
      margin: 20px;
    }
    .info {
      display: flex;
      height: 40px;
      align-items: center;
      width: 400px;
      justify-content: space-around;
      color: rgb(134, 134, 134);
    }
  }
}
.actived {
  background-color: rgba(62, 175, 124);
  color: white;
}
</style>