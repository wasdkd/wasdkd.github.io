<template>
  <div class="wall">
    <hr color="#00FF00">
    <img class="img1" src="../assets/img/aixin.jpg" >
    <img class="img2" src="../assets/img/qiang.jpg" >

    <el-container>
      <el-row>
        <el-button type="success" style="position: absolute;top: -38px;width: 200px;height: 60px;font-size: 20px;">
          表白墙</el-button>
      </el-row>

      <el-aside width="200px">
        <el-row>
          <el-button @click="towallmsg" style="position: absolute;top: 65px;left: 90px;width: 100px;" type="success" plain>
            查看信息</el-button>
          <el-button @click="towallfabu" type="success" style="position: absolute;top: 160px;left: 80px;width: 100px;" plain>我要发布</el-button>
        </el-row>
      </el-aside>
      <el-main>
        <router-view></router-view>
      </el-main>
    </el-container>
  </div>

</template>

<script >
export default {
  methods: {
    towallmsg (path) {
      console.log(path)
      this.$router.replace('/wallmsg')
    },
    towallfabu (path) {
      console.log(path)
      this.$router.replace('/wallfabu')
    }

  }
}
</script>

<style>
  .wall {
    position: absolute;
    width: 1480px;
    height: auto;
    top: 230px;
    left: 28px;
    right: 10px;
  }

  .el-aside {
    background-color: #ffffff;
    height: 400px;
  }

  .el-main {
    background-color: #ffffff;

  }

  body>.el-container {
    margin-bottom: 40px;
  }

  .el-container:nth-child(5) .el-aside,
  .el-container:nth-child(6) .el-aside {
    line-height: 260px;
  }

  .el-container:nth-child(7) .el-aside {
    line-height: 320px;
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
