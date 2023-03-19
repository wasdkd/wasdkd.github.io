<template>
  <el-table
      :data="tableData"
      height="430"
      border
      style="width: 60%">
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
        prop="msg"
        label="信息"
        >
      </el-table-column>
      <el-table-column prop="img" label="图片(点击查看)" width="120">
        <el-image
            style="width: 100px; height: 100px"
            :src="url"
            :preview-src-list="srcList">
          </el-image>
      </el-table-column>

    </el-table>

</template>

<script>
export default {
  data () {
    return {
      url: require('../assets/img/p_school.jpg'),
      srcList: [
        /* require('../assets/img/picture.jpg') */ 'https://fuss10.elemecdn.com/8/27/f01c15bb73e1ef3793e64e6b7bbccjpeg.jpeg',
        /* require('../assets/img/year.png') */ 'https://fuss10.elemecdn.com/1/8e/aeffeb4de74e2fde4bd74fc7b4486jpeg.jpeg'
      ],
      tableData: [{
        date: '2022.2.10 12:20',
        name: '张无忌',
        msg: '我发布了一条表白墙'

      }, {
        date: '2022.2.10 12:20',
        name: '张无忌',
        msg: '我发布了一条表白墙'
      }, {
        date: '2022.2.10 12:20',
        name: '张无忌',
        msg: '我发布了一条表白墙'
      }, {
        date: '2022.2.10 12:20',
        name: '张无忌',
        msg: '我发布了一条表白墙'
      }, {
        date: '2022.2.10 12:20',
        name: '张无忌',
        msg: '我发布了一条表白墙'
      }, {
        date: '2022.2.10 12:20',
        name: '张无忌',
        msg: '我发布了一条表白墙'
      },
      {
        date: '2022.2.10 12:20',
        name: '张无忌',
        msg: '我发布了一条表白墙'
      },
      {
        date: '2022.2.10 12:20',
        name: '张无忌',
        msg: '我发布了一条表白墙'
      },
      {
        date: '2022.2.10 12:20',
        name: '张无忌',
        msg: '我发布了一条表白墙'
      }, {
        date: '2022.2.10 12:20',
        name: '张无忌',
        msg: '我发布了一条表白墙'
      }]
    }
  }
}
</script>

<style >
.el-table{
  position: absolute;
  top: 10px;

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
