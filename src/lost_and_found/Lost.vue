<template>
  <div class="lost">
    <el-link class="msg" @click="tolostmsg" type="success" >查看信息</el-link>
    <el-link class="pick" @click="tolostpick" type="success" >我捡了个啥</el-link>
    <el-link class="lose" @click="tolostlose" type="success">我丢东西了</el-link>
    <hr color="#00FF00">
    <img class="img1" src="../assets/img/p3.png" >
    <img class="img2" src="../assets/img/p4.png" >
    <router-view></router-view>
  </div>
</template>

<script>
export default{
  methods: {
    tolostmsg (path) {
      console.log(path)
      this.$router.replace('/lostmsg')
    },
    tolostpick (path) {
      console.log(path)
      this.$router.replace('/lostpick')
    },
    tolostlose (path) {
      console.log(path)
      this.$router.replace('/lostlose')
    }
  }
}
</script>

<style >
  .msg{
    position: absolute;
    top: 0px;
    left: 280px;
    font-size: 15px;
  }
  .pick{
    position: absolute;
    top: 0px;
    left: 450px;
    font-size: 15px;
  }
  .lose{
    position: absolute;
    top: 0px;
    left: 650px;
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
