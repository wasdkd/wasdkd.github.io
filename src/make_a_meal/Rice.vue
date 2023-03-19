<template>
  <div class="rice">
    <el-link class="dingdan" @click="toricedingdan" type="success" >已有订单</el-link>
    <el-link class="fabu" @click="toricefabu" type="success" >我要发布</el-link>
    <hr color="#00FF00">
    <img class="img1" src="../assets/img/xiaoyuang.png" >
    <img class="img2" src="../assets/img/shitang.png" >
    <router-view></router-view>
  </div>
</template>

<script>
export default{
  methods: {
    toricedingdan (path) {
      console.log(path)
      this.$router.replace('/ricedingdan')
    },
    toricefabu (path) {
      console.log(path)
      this.$router.replace('/ricefabu')
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
</style>
