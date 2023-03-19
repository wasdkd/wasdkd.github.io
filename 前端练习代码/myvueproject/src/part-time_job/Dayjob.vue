<template>
  <div class="dayjob">
    <img class="img" src="../assets/img/job4.jpg" >
        <el-table
        :data="tableData"
        height="420"
        border
        style="width: 69%">
        <el-table-column
          prop="date"
          label="时间"
          width="140">
        </el-table-column>
        <el-table-column
          prop="name"
          label="联系人"
          width="90">
        </el-table-column>
        <el-table-column
          prop="address"
          label="地址"
          width="130">
        </el-table-column>
        <el-table-column
          prop="number"
          label="电话"
          width="120">
        </el-table-column>
        <el-table-column
          prop="position"
          label="职位"
          width="100">
        </el-table-column>
        <el-table-column
          prop="wage"
          label="工资"
          width="100">
        </el-table-column>
        <el-table-column
          prop="require"
          label="要求"
          width="140">
        </el-table-column>

        <el-table-column fixed="right" label="操作" width="100">
          <template slot-scope="scope">

            <el-button type="text" size="small">接单</el-button>
          </template>
        </el-table-column>

      </el-table>
  </div>
</template>

<script>
export default {
  data () {
    return {
      tableData: [{
        date: '2022.2.10 12:20',
        name: '张无忌',
        address: '.......',
        number: 12332112345,
        position: '.....',
        wage: '12/时',
        require: '认真负责'
      }, {
        date: '2022.2.10 12:20',
        name: '张无忌',
        address: '.......',
        number: 12332112345,
        position: '.....',
        wage: '12/时',
        require: '认真负责'
      }, {
        date: '2022.2.10 12:20',
        name: '张无忌',
        address: '.......',
        number: 12332112345,
        position: '.....',
        wage: '12/时',
        require: '认真负责'
      }, {
        date: '2022.2.10 12:20',
        name: '张无忌',
        address: '.......',
        number: 12332112345,
        position: '.....',
        wage: '12/时',
        require: '认真负责'
      }, {
        date: '2022.2.10 12:20',
        name: '张无忌',
        address: '.......',
        number: 12332112345,
        position: '.....',
        wage: '12/时',
        require: '认真负责'
      }, {
        date: '2022.2.10 12:20',
        name: '张无忌',
        address: '.......',
        number: 12332112345,
        position: '.....',
        wage: '12/时',
        require: '认真负责'
      }, {
        date: '2022.2.10 12:20',
        name: '张无忌',
        address: '.......',
        number: 12332112345,
        position: '.....',
        wage: '12/时',
        require: '认真负责'
      }]
    }
  }
}
</script>

<style >
  .dayjob{
    position: absolute;
    margin-top: -57px;
    width: 1470px;
  }
  .img{
    position: absolute;
    width: 400px;
    height: 400px;
    right: 10px;
  }
  /* ================ */
  /* 设置表格表头高度和每一行的高度 */
    .el-table__header tr,
    .el-table__header th {
      padding: 0;
      height: 30px;
      line-height: 30px;
      color: #000000;
    }

    .el-table__body tr,
    .el-table__body td {
      padding: 0;
      height: 30px;
      line-height: 30px;
    }
    /* ============ */
</style>
