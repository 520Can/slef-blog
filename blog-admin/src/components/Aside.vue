<template>
  <div class="aside">
    <div class="logo" @click="$router.push('/home')">
      <div class="logos log1"></div>
      <div class="logos log2"></div>
      <div class="logos log3"></div>
    </div>
    <div class="navegation">
      <router-link
        :to="item.topage"
        v-for="(item, index) in links"
        :key="index"
        @click.native="activeClasss(index)"
        :class="activeclass === index ? 'actived' : ''"
      >
        <!-- :class="activeclass === $route.path ? 'actived' : ''" -->
        <i :class="item.classs"></i> {{ item.title }}</router-link
      >
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      links: [
        {
          title: "我是谁？",
          classs: "el-icon-user",
          topage: "/selfinfo",
        },
        {
          title: "管理文章",
          classs: "el-icon-edit-outline",
          topage: "/articleinfo",
        },
        { title: "文章的创建", classs: "el-icon-tickets", topage: "/infoinfo" },
        {
          title: "管理文章评论",
          classs: "el-icon-copy-document",
          topage: "/comment",
        },
        {
          title: "来自用户的留言",
          classs: "el-icon-copy-document",
          topage: "/usermess",
        },
        {
          title: "管理员",
          classs: "el-icon-copy-document",
          topage: "/manager",
        },
        // {
        //   title: "其他设置",
        //   classs: "el-icon-copy-document",
        //   topage: "/setting",
        // },
      ],
      activeclass: 0,
    };
  },
  methods: {
    activeClasss(index) {
      this.activeclass = index;
      // console.log(this.$route.path);
      // this.activeclass = this.links[index].topage;
      // console.log(this.activeclass);
      // this.activeclass = this.links.topage;
      // this.activeclass = this.links.topage;
    },
  },
};
</script>

<style lang="less" scoped>
.aside {
  position: fixed;
  .logo {
    display: flex;

    .log1 {
      margin: 20px 10px;
      width: 20px;
      height: 20px;
      margin-left: 20px;
      background-color: rgb(255, 92, 92);
      border-radius: 50%;
    }
    .log2 {
      margin: 20px 10px;
      width: 20px;
      height: 20px;
      border-radius: 50%;
      background-color: rgb(255, 188, 55);
    }
    .log3 {
      margin: 20px 10px;
      width: 20px;
      height: 20px;
      border-radius: 50%;
      background-color: rgb(14, 203, 68);
    }
  }
  width: 350px;
  .navegation {
    margin-top: 25px;
    width: 80%;
    border-radius: 10px;
    a {
      i {
        margin: 0 15px;
      }
      margin-top: 5px;
      display: block;
      padding: 20px;
      text-decoration: none;
      // letter-spacing: 2px;
      font-size: 14px;
      color: rgb(94, 90, 90);
      user-select: none;
      &:hover {
        background-color: rgb(230, 230, 230);
        border-radius: 0 30px 30px 0;
        color: #79bbff;
      }
    }
    .actived {
      background-color: rgb(232, 240, 254);
      border-radius: 0 30px 30px 0;
      color: rgb(26, 115, 232);
      pointer-events: none;
    }
  }
}
</style>