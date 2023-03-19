<template>
<div class="secondhand">
  <el-container>
    <el-header>
      <el-menu :default-active="activeIndex" class="el-menu-demo" mode="horizontal" @select="handleSelect">
        <el-menu-item index="2" @click="tooldthing"> 旧  物 / 旧 书 </el-menu-item>
        <el-menu-item index="3" @click="tooldrelease"> 发  布 </el-menu-item>

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

    tooldthing (path) {
      console.log(path)
      this.$router.replace('/oldthing')
    },
    tooldbook (path) {
      console.log(path)
      this.$router.replace('/oldbook')
    },
    tooldrelease (path) {
      console.log(path)
      this.$router.replace('/oldrelease')
    }

  }
}
</script>

<style >
  .secondhand{
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
</style>
