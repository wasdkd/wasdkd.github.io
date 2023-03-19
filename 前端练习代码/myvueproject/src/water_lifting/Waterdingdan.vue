<template>
  <el-table
      :data="tableData"
      height="350"
      border
      style="width: 75%">
      <el-table-column
        prop="date"
        label="时间"
        width="160">
      </el-table-column>
      <el-table-column
        prop="name"
        label="用户名"
        width="140">
      </el-table-column>
      <el-table-column
        prop="address"
        label="地址"
        width="160">
      </el-table-column>
      <el-table-column
        prop="number"
        label="电话"
        width="160">
      </el-table-column>

      <el-table-column fixed="right" label="操作" width="100">
        <template slot-scope="scope">

          <el-button type="text" size="small">接单</el-button>
        </template>
      </el-table-column>

    </el-table>

</template>

<script>
export default {
  data () {
    return {
      tableData: [{
        date: '2022.2.10 12:20',
        name: '张无忌',
        address: '12栋401宿舍',
        number: 12332112345

      }, {
        date: '2022.2.10 12:20',
        name: '张无忌',
        address: '12栋401宿舍',
        number: 12332112345

      }, {
        date: '2022.2.10 12:20',
        name: '张无忌',
        address: '12栋401宿舍',
        number: 12332112345

      }, {
        date: '2022.2.10 12:20',
        name: '张无忌',
        address: '12栋401宿舍',
        number: 12332112345

      }, {
        date: '2022.2.10 12:20',
        name: '张无忌',
        address: '12栋401宿舍',
        number: 12332112345,
        require: '烧鸭饭'
      }, {
        date: '2022.2.10 12:20',
        name: '张无忌',
        address: '12栋401宿舍',
        number: 12332112345

      }, {
        date: '2022.2.10 12:20',
        name: '张无忌',
        address: '12栋401宿舍',
        number: 12332112345

      }]
    }
  }
}
</script>

<style >
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
