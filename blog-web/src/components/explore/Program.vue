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
          src: "https://cdn.pixabay.com/photo/2022/01/15/02/07/windows-6938478_960_720.jpg",
        },
        {
          id: 2,
          src: "https://cdn.pixabay.com/photo/2017/08/10/02/05/tiles-shapes-2617112_960_720.jpg",
        },
        {
          id: 3,
          src: "https://cdn.pixabay.com/photo/2018/12/10/09/15/abstract-3866486_960_720.jpg",
        },
        {
          id: 4,
          src: "https://cdn.pixabay.com/photo/2021/04/13/06/59/woman-6174830_960_720.jpg",
        },
        {
          id: 5,
          src: "https://cdn.pixabay.com/photo/2017/08/04/01/28/cat-2578806_960_720.jpg",
        },
        {
          id: 6,
          src: "https://cdn.pixabay.com/photo/2015/03/16/08/18/hex-675576_960_720.jpg",
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