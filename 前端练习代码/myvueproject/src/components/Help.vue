<template>
  <div class="help">
    <el-container>
      <el-row>
        <el-button type="success" style="position: absolute;top: -38px;width: 200px;height: 60px;font-size: 20px;">
          校园日常帮手</el-button>
      </el-row>

      <el-aside width="200px">
        <el-row>
          <el-button @click="torice" style="position: absolute;top: 65px;left: 90px;width: 100px;" type="success" plain>打饭</el-button>
          <el-button @click="towater" type="success" style="position: absolute;top: 160px;left: 80px;width: 100px;" plain>抬水</el-button>
          <el-button @click="tolost" type="success" style="position: absolute;top: 260px;left: 77px;" plain>失物招领</el-button>
          <el-button @click="tobuy" type="success" style="position: absolute;top: 340px;left: 77px;width: 100px;" plain>代购</el-button>
        </el-row>
      </el-aside>
      <el-main>
        <router-view></router-view>
      </el-main>
    </el-container>
  </div>

</template>

<script>
export default {
  methods: {
    torice (path) {
      console.log(path)
      this.$router.replace('/ricedingdan')
    },
    towater (path) {
      console.log(path)
      this.$router.replace('/waterdingdan')
    },
    tolost (path) {
      console.log(path)
      this.$router.replace('/lostmsg')
    },
    tobuy (path) {
      console.log(path)
      this.$router.replace('/buydingdan')
    }
  }
}
</script>

<style scoped>
  .help {
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
</style>
