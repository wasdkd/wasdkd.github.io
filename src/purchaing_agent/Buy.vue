<template>
  <div class="buy">
    <el-link class="dingdan" @click="buydingdan" type="success" >已有订单</el-link>
    <el-link class="fabu" @click="buyfabu" type="success" >我要发布</el-link>
    <hr color="#00FF00">
    <img class="img1" src="../assets/img/buy1.jpg" >
    <img class="img2" src="../assets/img/buy2.jpg" >
    <router-view></router-view>
  </div>
</template>

<script>
export default{
  methods: {
    buydingdan (path) {
      console.log(path)
      this.$router.replace('/buydingdan')
    },
    buyfabu (path) {
      console.log(path)
      this.$router.replace('/buyfabu')
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
    width: 405px;
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
