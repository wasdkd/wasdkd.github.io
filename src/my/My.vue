<template>
<div class="my">
  <img class="img" src="../assets/img/bird.jpg" >
  <el-container>
    <el-header>
      <el-menu :default-active="activeIndex" class="el-menu-demo" mode="horizontal" @select="handleSelect">
        <el-menu-item index="2" @click="tomyrice"> 打 饭 </el-menu-item>
        <el-menu-item index="3" @click="tomywater"> 抬 水 </el-menu-item>
        <el-menu-item index="4" @click="tomylost"> 失 物 招 领 </el-menu-item>
        <el-menu-item index="5" @click="tomybuy"> 代 购 </el-menu-item>
        <el-menu-item index="6" @click="tomyoldthing"> 旧 物 / 旧 书 </el-menu-item>
        <el-menu-item index="7" @click="tomywall"> 表 白 墙 </el-menu-item>
      </el-menu>
    </el-header>
    <el-main>

      <router-view></router-view>
    </el-main>
  </el-container>
</div>
</template>

<script>
export default {
  data () {
    return {
      activeIndex: '1'

    }
  },
  methods: {

    tomyrice (path) {
      console.log(path)
      this.$router.replace('/myrice')
    },
    tomywater (path) {
      console.log(path)
      this.$router.replace('/mywater')
    },
    tomylost (path) {
      console.log(path)
      this.$router.replace('/mylost')
    },
    tomybuy (path) {
      console.log(path)
      this.$router.replace('mybuy')
    },
    tomyoldthing (path) {
      console.log(path)
      this.$router.replace('myoldthing')
    },
    tomywall (path) {
      console.log(path)
      this.$router.replace('mywall')
    }

  }
}
</script>

<style scoped>
  .my{
      position: absolute;
      top: 200px;
      width: 1480px;
    }

   .el-header {
      background-color: #ffffff;
      color: #333;
      text-align: center;
      line-height: 60px;
    }

    .el-main {
      background-color: #ffffff;
      color: #333;
      text-align: center;
      line-height: 160px;
    }

    .img{
      position: absolute;
      width: 300px;
      height: 200px;
      top: 100px;
      right: 250px;
    }
</style>
