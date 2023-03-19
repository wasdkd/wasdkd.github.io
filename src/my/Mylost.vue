<template>
  <div class="myrice">

    <el-table :data="tableData" height="430"  border style="width: 100%">
      <el-table-column prop="data" label="时间" width="130">
      </el-table-column>
      <el-table-column prop="name" label="用户名" width="90">
      </el-table-column>
      <el-table-column prop="address" label="捡/丢东西地址" width="120">
      </el-table-column>
      <el-table-column prop="number" label="电话" width="120">
      </el-table-column>
      <el-table-column prop="name_of_article" label="物品名称" width="90">
      </el-table-column>
      </el-table-column>
      <el-table-column prop="img" label="图片(点击查看)" width="120">
        <el-image
            style="width: 100px; height: 100px"
            :src="url"
            :preview-src-list="srcList">
          </el-image>
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
      url: require('../assets/img/p_school.jpg'),
      srcList: [
        /* require('../assets/img/picture.jpg') */ 'https://fuss10.elemecdn.com/8/27/f01c15bb73e1ef3793e64e6b7bbccjpeg.jpeg',
        /* require('../assets/img/year.png') */ 'https://fuss10.elemecdn.com/1/8e/aeffeb4de74e2fde4bd74fc7b4486jpeg.jpeg'
      ],
      tableData: [{
        data: '2022.2.10 13:30',
        name: '孤灯',
        address: '一食堂二楼',
        number: 12332112345,
        name_of_article: '雨伞'
      },
      {
        data: '2022.2.10 13:30',
        name: '孤灯',
        address: '一食堂二楼',
        number: 12332112345,
        name_of_article: '雨伞'
      },
      {
        data: '2022.2.10 13:30',
        name: '孤灯',
        address: '一食堂二楼',
        number: 12332112345,
        name_of_article: '雨伞'
      },
      {
        data: '2022.2.10 13:30',
        name: '孤灯',
        address: '一食堂二楼',
        number: 12332112345,
        name_of_article: '雨伞'
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
