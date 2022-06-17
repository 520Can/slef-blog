<template>
  <div id="styledesign" class="wow fadeIn" data-wow-duration="2s">
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
          src: "https://cdn.pixabay.com/photo/2017/09/25/13/12/cocker-spaniel-2785074_960_720.jpg",
        },
        {
          id: 2,
          src: "https://cdn.pixabay.com/photo/2014/10/01/10/44/hedgehog-468228_960_720.jpg",
        },
        {
          id: 3,
          src: "https://cdn.pixabay.com/photo/2017/09/25/13/14/dog-2785077_960_720.jpg",
        },
        {
          id: 4,
          src: "https://cdn.pixabay.com/photo/2016/11/21/14/47/kitten-1845789_960_720.jpg",
        },
        {
          id: 5,
          src: "https://cdn.pixabay.com/photo/2015/02/25/17/56/cat-649164_960_720.jpg",
        },
        {
          id: 6,
          src: "https://cdn.pixabay.com/photo/2018/09/22/05/43/rabbit-3694556_960_720.jpg",
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
      //   transition: 0.1s linear;
      &:hover {
        // transform: scale(1.1);
        box-shadow: 3px 3px 3px 3px rgb(232, 232, 232);
      }
    }
    .actived {
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