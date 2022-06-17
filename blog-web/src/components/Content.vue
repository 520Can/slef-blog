<template>
  <div class="content" :class="$store.state.changeback ? '' : 'back'">
  
  </div>
</template>

<script>
export default {};
</script>

<style lang="less" scoped>
.content {
  position: absolute;
  background-color: inherit;
  top: 100%;
  width: 100%;
  height: 100%;
}
.back{
  background-color: black;
}

</style>