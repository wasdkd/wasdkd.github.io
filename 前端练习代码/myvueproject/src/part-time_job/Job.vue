<template>
<div class="job">
  <el-container>
    <el-header>
      <el-menu :default-active="activeIndex" class="el-menu-demo" mode="horizontal" @select="handleSelect">
        <el-menu-item index="2" @click="todayjob"> 今 日 兼 职 </el-menu-item>
        <el-menu-item index="3" @click="tojobfabu"> 发  布 兼 职 </el-menu-item>

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

    todayjob (path) {
      console.log(path)
      this.$router.replace('/dayjob')
    },
    tojobfabu (path) {
      console.log(path)
      this.$router.replace('/jobfabu')
    }

  }
}
</script>

<style >
  .job{
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
