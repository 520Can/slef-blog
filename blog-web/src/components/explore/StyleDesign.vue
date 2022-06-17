<template>
  <div id="styledesign" class="wow fadeIn" data-wow-duration="3s">
    <div class="imglist" v-for="item in data" :key="item.id">
      <img
        :class="activedindex == item.id ? 'actived' : ''"
        :src="item.src"
        alt=""
        @click="changeClass(item.id)"
      />
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      data: [
        {
          id: 1,
          src: "https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fi0.hdslb.com%2Fbfs%2Farticle%2Fe5a5d97743da57a010498cabaed9eaf4d70b2956.jpg&refer=http%3A%2F%2Fi0.hdslb.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1654339624&t=544c1917eb1b1edff4fbb269670d09b1",
        },
        {
          id: 2,
          src: "https://img0.baidu.com/it/u=4104624828,3899144232&fm=253&fmt=auto&app=138&f=JPEG?w=800&h=500",
        },
        {
          id: 3,
          src: "https://cdn.pixabay.com/photo/2015/12/01/20/28/road-1072821_960_720.jpg",
        },
        {
          id: 4,
          src: "https://cdn.pixabay.com/photo/2019/03/28/10/19/sunset-4086848_960_720.jpg",
        },
        {
          id: 5,
          src: "https://cdn.pixabay.com/photo/2021/11/13/23/06/tree-6792528_960_720.jpg",
        },
        {
          id: 6,
          src: "https://cdn.pixabay.com/photo/2020/12/23/14/01/river-5855081_960_720.jpg",
        },
      ],
      actived: 0,
      activedindex: 0,
    };
  },
  methods: {
    changeClass(id) {
      console.log(this.activedindex);
      // this.actived = !this.actived;
      this.actived++;
      this.activedindex = id;
      if (this.actived >= 1) {
        this.activedindex = -1;
        this.actived = -1;
      }
    },
  },
};
</script>

<style lang='less' scoped>
#styledesign {
  // display: flex;
  flex-wrap: wrap;
  display: flex;
  justify-content: space-around;
  .imglist {
    width: 200px;
    height: 200px;
    // margin-left: 120px;
    margin: 50px;
    img {
      // position: relative;
      // position: absolute;
      border-radius: 10px;
      width: 300px;
      height: 200px;
      box-shadow: 2px 2px 2px 2px rgb(232, 232, 232);
      transition: 0.1s linear;
      &:hover {
        // transform: scale(1.1);
        box-shadow: 3px 3px 3px 3px rgb(232, 232, 232);
      }
    }
    .actived {
      transition: 0.1s linear;

      position: absolute;
      // width: 1000px;
      // height: 600px;
      transform: scale(3.5);
      z-index: inherit;
      left: 820px;
      top: 320px;
    }
  }
}
</style>