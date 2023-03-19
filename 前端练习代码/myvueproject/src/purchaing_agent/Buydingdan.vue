<template>
  <el-table
      :data="tableData"
      height="350"
      border
      style="width: 69%">
      <el-table-column
        prop="date"
        label="收货时间"
        width="160">
      </el-table-column>
      <el-table-column
        prop="name"
        label="用户名"
        width="140">
      </el-table-column>
      <el-table-column
        prop="address"
        label="收货地址"
        width="160">
      </el-table-column>
      <el-table-column
        prop="number"
        label="电话"
        width="160">
      </el-table-column>
      <el-table-column
        prop="buy"
        label="代购物品"
        >
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
        number: 12332112345,
        buy: '香蕉'
      }, {
        date: '2022.2.10 12:20',
        name: '张无忌',
        address: '12栋401宿舍',
        number: 12332112345,
        buy: '香蕉'
      }, {
        date: '2022.2.10 12:20',
        name: '张无忌',
        address: '12栋401宿舍',
        number: 12332112345,
        buy: '香蕉'
      }, {
        date: '2022.2.10 12:20',
        name: '张无忌',
        address: '12栋401宿舍',
        number: 12332112345,
        buy: '香蕉'
      }, {
        date: '2022.2.10 12:20',
        name: '张无忌',
        address: '12栋401宿舍',
        number: 12332112345,
        buy: '香蕉'
      }, {
        date: '2022.2.10 12:20',
        name: '张无忌',
        address: '12栋401宿舍',
        number: 12332112345,
        buy: '香蕉'
      }, {
        date: '2022.2.10 12:20',
        name: '张无忌',
        address: '12栋401宿舍',
        number: 12332112345,
        buy: '香蕉'
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
