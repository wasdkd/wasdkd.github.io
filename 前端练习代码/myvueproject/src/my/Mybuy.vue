<template>
  <div class="myrice">

    <el-table :data="tableData" height="430" border style="width: 820px">
      <el-table-column prop="data" label="收货时间" width="130">
      </el-table-column>
      <el-table-column prop="name" label="用户名" width="120">
      </el-table-column>
      <el-table-column prop="address" label="收货地址" width="120">
      </el-table-column>
      <el-table-column prop="number" label="电话" width="120">
      </el-table-column>
      <el-table-column prop="buy" label="代购物品" width="120">
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
        data: '2022.2.10 13:30',
        name: '孤灯',
        address: '12栋401',
        number: 12332112345,
        buy: '蓝月亮洗衣夜'
      },
      {
        data: '2022.2.10 13:30',
        name: '孤灯',
        address: '12栋401',
        number: 12332112345,
        buy: '蓝月亮洗衣夜'
      },
      {
        data: '2022.2.10 13:30',
        name: '孤灯',
        address: '12栋401',
        number: 12332112345,
        buy: '蓝月亮洗衣夜'
      },
      {
        data: '2022.2.10 13:30',
        name: '孤灯',
        address: '12栋401',
        number: 12332112345,
        buy: '蓝月亮洗衣夜'
      },
      {
        data: '2022.2.10 13:30',
        name: '孤灯',
        address: '12栋401',
        number: 12332112345,
        buy: '蓝月亮洗衣夜'
      },
      {
        data: '2022.2.10 13:30',
        name: '孤灯',
        address: '12栋401',
        number: 12332112345,
        buy: '蓝月亮洗衣夜'
      },
      {
        data: '2022.2.10 13:30',
        name: '孤灯',
        address: '12栋401',
        number: 12332112345,
        buy: '蓝月亮洗衣夜'
      }
      ]
    }
  }
}
</script>

<style >
  .myrice {
    position: absolute;
    top: 60px;

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
