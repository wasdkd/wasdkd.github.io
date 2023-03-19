<template>
  <div class="water">
    <el-link class="dingdan" @click="towaterdingdan" type="success" >已有订单</el-link>
    <el-link class="fabu" @click="towaterfabu" type="success" >我要发布</el-link>
    <hr color="#00FF00">
    <img class="img1" src="../assets/img/p2.png" >
    <img class="img2" src="../assets/img/p1.png" >
    <router-view></router-view>
  </div>
</template>

<script>
export default{
  methods: {
    towaterdingdan (path) {
      console.log(path)
      this.$router.replace('/waterdingdan')
    },
    towaterfabu (path) {
      console.log(path)
      this.$router.replace('/waterfabu')
    }
  }
}
</script>

<style >
  .dingdan{
    position: absolute;
    top: 0px;
    left: 350px;
    font-size: 15px;
  }
  .fabu{
    position: absolute;
    top: 0px;
    left: 550px;
    font-size: 15px;
  }
  .img1{
    position: absolute;
    width: 400px;
    height: 235px;
    right: 1px;
    top: -37px;
  }
  .img2{
    position: absolute;
    width: 400px;
    height: 235px;
    right: 1px;
    top: 205px;
  }
  .water{
    width: 1000px;
  }
</style>
