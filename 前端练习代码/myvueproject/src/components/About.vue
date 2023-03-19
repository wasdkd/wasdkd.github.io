<template>

  <div class="font">
  <img width="250px" style="position: absolute;top: 195px;left: 28px;" src="../assets/img/shu.jpg" >
  <img width="400px" height="235px" style="position: absolute;top: 195px;right: 28px;" src="../assets/img/sun.jpg" >
  <img width="400px" height="235px" style="position: absolute;top: 435px;right: 28px;" src="../assets/img/fenyu.jpg" >
  <img width="150px" height="150px" style="position: absolute;top: 200px;right: 500px;" src="../assets/img/tuandui.jpg" >
   <el-descriptions class="margin-top" title="关于我们" :column="4" direction="vertical">
     <el-descriptions-item label="平台名称">多功能互惠平台——校园帮</el-descriptions-item>
     <el-descriptions-item label="目的">服务于在校大学生</el-descriptions-item>
     <el-descriptions-item label="开发者" :span="2">毅动团队</el-descriptions-item>
     <el-descriptions-item label="学校">
       <el-tag size="small">广西科技师范学院来宾校区</el-tag>
     </el-descriptions-item>
     <el-descriptions-item label="功能">1.帮忙打饭、帮忙抬水、失物招领等日常生活需求; 2.空余时间兼职晚辅、<br>校内兼职;3.同校学生
拼车服务; 4.二手物品销售处理; 5.供应新鲜水果等</el-descriptions-item>
   </el-descriptions>
  </div>

</template>

<script>
</script>

<style >

  .font{
  font-family: "Helvetica Neue",Helvetica,"PingFang SC","Hiragino Sans GB","Microsoft YaHei","微软雅黑",Arial,sans-serif;
  width: 1000px;
  }
  .margin-top{
    position: absolute;
    margin-top: 170px;
    left: 305px;
    width: 800px;
  }
</style>
