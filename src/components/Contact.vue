<template>
  <div class="contact">
    <el-calendar v-model="value">
    </el-calendar>
    <el-descriptions class="margin-top" title="联系我们" :column="3" :size="size" border>

      <el-descriptions-item>
        <template slot="label">
          <i class="el-icon-user"></i>
          负责人
        </template>
        tryhtryhtrhy
      </el-descriptions-item>
      <el-descriptions-item>
        <template slot="label">
          <i class="el-icon-mobile-phone"></i>
          手机号
        </template>
        18100000000
      </el-descriptions-item>
      <el-descriptions-item>
        <template slot="label">
          <i class="el-icon-location-outline"></i>
          居住地
        </template>
        广西科技师范学院来宾校区
      </el-descriptions-item>
      <el-descriptions-item>
        <template slot="label">
          <i class="el-icon-tickets"></i>
          学校
        </template>
        <el-tag size="small">广西科技师范学院来宾校区</el-tag>
      </el-descriptions-item>
      <el-descriptions-item>
        <template slot="label">
          <i class="el-icon-office-building"></i>
          联系地址
        </template>
        12栋401
      </el-descriptions-item>
    </el-descriptions>
  </div>

</template>

<script>
export default {
  data () {
    return {
      value: new Date()
    }
  }
}
</script>

<style >
  .contact {
    position: absolute;
    margin-top: 63px;
    width: 1470px;
  }

  .el-calendar {
    width: 900px;
  }

  .el-calendar-table .el-calendar-day {
    width: 40px;
    height: 50px;
  }

  .margin-top {
    position: absolute;
    top: 100px;
    left: 910px;
    width: 500px;
    height: 100px;
  }
</style>
