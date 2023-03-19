<template>
  <div class="mywater">

    <el-table :data="tableData" height="430" border style="width: 100%">
      <el-table-column prop="data" label="时间" width="130">
      </el-table-column>
      <el-table-column prop="name" label="用户名" width="120">
      </el-table-column>
      <el-table-column prop="address" label="地址" width="120">
      </el-table-column>
      <el-table-column prop="number" label="电话" width="120">
      </el-table-column>
      <el-table-column
                  fixed="right"
                  label="操作"
                  width="120">
                  <template slot-scope="scope">
                    <el-button
                      @click.native.prevent="deleteRow(scope.$index, tableData)"
                      type="text"
                      size="small">
                      移除
                    </el-button>
                  </template>
                </el-table-column>
          </el-table>
        </div>
      </template>

<script>
export default {
  methods: {
    deleteRow (index, rows) {
      rows.splice(index, 1)
    }
  },
  data () {
    return {

      tableData: [{
        data: '2022.2.10 12:20',
        name: '孤灯',
        address: '12栋401宿舍',
        number: 12332112345
      }, {

        data: '2022.2.10 12:20',
        name: '孤灯',
        address: '12栋401宿舍',
        number: 12332112345
      }, {

        data: '2022.2.10 12:20',
        name: '孤灯',
        address: '12栋401宿舍',
        number: 12332112345
      }, {

        data: '2022.2.10 12:20',
        name: '孤灯',
        address: '12栋401宿舍',
        number: 12332112345
      },
      {

        data: '2022.2.10 12:20',
        name: '孤灯',
        address: '12栋401宿舍',
        number: 12332112345
      },
      {

        data: '2022.2.10 12:20',
        name: '孤灯',
        address: '12栋401宿舍',
        number: 12332112345
      },
      {

        data: '2022.2.10 12:20',
        name: '孤灯',
        address: '12栋401宿舍',
        number: 12332112345
      },
      {

        data: '2022.2.10 12:20',
        name: '孤灯',
        address: '12栋401宿舍',
        number: 12332112345
      },
      {

        data: '2022.2.10 12:20',
        name: '孤灯',
        address: '12栋401宿舍',
        number: 12332112345
      },
      {

        data: '2022.2.10 12:20',
        name: '孤灯',
        address: '12栋401宿舍',
        number: 12332112345
      },
      {

        data: '2022.2.10 12:20',
        name: '孤灯',
        address: '12栋401宿舍',
        number: 12332112345
      }]
    }
  }
}
</script>

<style >
  .mywater {
    position: absolute;
    top: 60px;
    width: 700px;

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
