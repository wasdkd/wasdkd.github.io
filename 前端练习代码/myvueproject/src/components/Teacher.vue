<template>
  <div class="teacher">
    <img class="img1" src="../assets/img/mteacher.jpg" >
    <img class="img2" src="../assets/img/wteacher.jpg" >

    <el-descriptions direction="vertical" :column="4" border>
      <el-descriptions-item label="姓名">htrh</el-descriptions-item>
      <el-descriptions-item label="邮箱">12332112345</el-descriptions-item>
      <el-descriptions-item label="职称" :span="2">高级工程师</el-descriptions-item>
      <el-descriptions-item label="备注">trhtrhtrhjtrhtrhtrh<br>创业项目多项，多次指导学生参加各种竞赛，成果显著。
      </el-descriptions-item>

    </el-descriptions>

    <el-descriptions class="el2" direction="vertical" :column="4" border>
      <el-descriptions-item label="姓名">trhtrhtr</el-descriptions-item>
      <el-descriptions-item label="邮箱">whtrhth@126.com</el-descriptions-item>
      <el-descriptions-item label="职称" :span="2">教授</el-descriptions-item>
      <el-descriptions-item label="备注">htrhtrhhthtrhrthhtrh<br>
      thtrhtrehtrhrhtr<br>htetrhtherhterhrth<br>
      thtrhtrehh<br>
      </el-descriptions-item>

    </el-descriptions>
  </div>

</template>

<script>
</script>

<style scoped>
  .teacher{
    position: absolute;
    margin-top: 63px;
    width: 1400px;
  }
  .img1{
    position: absolute;
    left: -80px;
  }
  .img2{
    position: absolute;
    right: -80px;
  }
  .el-descriptions{
    position: absolute;
    top: 100px;
    left: 300px;
  }
  .el2{
    position: absolute;
    top: 100px;
    left: 750px;
    right: 260px;
  }
</style>
