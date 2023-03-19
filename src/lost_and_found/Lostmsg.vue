<template>
  <el-table
      :data="tableData"
      height="350"
      border
      style="width: 69%">
      <el-table-column
        prop="date"
        label="时间"
        width="140">
      </el-table-column>
      <el-table-column
        prop="name"
        label="用户名"
        width="90">
      </el-table-column>
      <el-table-column
        prop="address"
        label="捡/丢东西地址"
        width="140">
      </el-table-column>
      <el-table-column
        prop="number"
        label="电话"
        width="140">
      </el-table-column>
      <el-table-column
        prop="name_of_article"
        label="物品名称"
        width="140">
      </el-table-column>

      </el-table-column>
      <el-table-column prop="img" label="图片(点击查看)" width="125">
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
      /* url: require('../assets/img/p_school.jpg'), */
      url: 'https://fuss10.elemecdn.com/e/5d/4a731a90594a4af544c0c25941171jpeg.jpeg',
      srcList: [
        /* require('../assets/img/picture.jpg') */ 'https://fuss10.elemecdn.com/8/27/f01c15bb73e1ef3793e64e6b7bbccjpeg.jpeg',
        /* require('../assets/img/year.png') */ 'https://fuss10.elemecdn.com/1/8e/aeffeb4de74e2fde4bd74fc7b4486jpeg.jpeg'
      ],
      tableData: [{
        date: '2022.2.10 12:20',
        name: '张无忌',
        address: '1食堂',
        number: 12332112345,
        name_of_article: '蓝牙耳机'
      }, {
        date: '2022.2.10 12:20',
        name: '张无忌',
        address: '1食堂',
        number: 12332112345,
        name_of_article: '蓝牙耳机'
      }, {
        date: '2022.2.10 12:20',
        name: '张无忌',
        address: '1食堂',
        number: 12332112345,
        name_of_article: '蓝牙耳机'
      }, {
        date: '2022.2.10 12:20',
        name: '张无忌',
        address: '1食堂',
        number: 12332112345,
        name_of_article: '蓝牙耳机'
      }, {
        date: '2022.2.10 12:20',
        name: '张无忌',
        address: '1食堂',
        number: 12332112345,
        name_of_article: '蓝牙耳机'
      }, {
        date: '2022.2.10 12:20',
        name: '张无忌',
        address: '1食堂',
        number: 12332112345,
        name_of_article: '蓝牙耳机'
      }, {
        date: '2022.2.10 12:20',
        name: '张无忌',
        address: '1食堂',
        number: 12332112345,
        name_of_article: '蓝牙耳机'
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
