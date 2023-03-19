<template>
  <div class="old">
    <img class="img" src="../assets/img/welcome.jpg" >
    <el-table :data="tableData" height="430" border style="width: 100%">

      <el-table-column prop="name" label="用户名" width="120">
      </el-table-column>
      <el-table-column prop="oldname" label="旧物/旧书名" width="120">
      </el-table-column>
      <el-table-column prop="price" label="价格" width="120">
      </el-table-column>
      <el-table-column prop="introdution" label="物品介绍" width="200">
      </el-table-column>
      <el-table-column prop="number" label="电话" width="120">
      </el-table-column>

      </el-table-column>
      <el-table-column prop="img" label="图片(点击查看)" width="120">
        <el-image
            style="width: 100px; height: 100px"
            :src="url"
            :preview-src-list="srcList">
          </el-image>
      </el-table-column>

      <el-table-column fixed="right" label="操作" width="100">
        <template slot-scope="scope">

          <el-button type="text" size="small">购买</el-button>
        </template>
      </el-table-column>
    </el-table>
  </div>
</template>

<script>
export default {
  methods: {

  },

  data () {
    return {
      url: require('../assets/img/p_school.jpg'),
      srcList: [
        /* require('../assets/img/picture.jpg') */ 'https://fuss10.elemecdn.com/8/27/f01c15bb73e1ef3793e64e6b7bbccjpeg.jpeg',
        /* require('../assets/img/year.png') */ 'https://fuss10.elemecdn.com/1/8e/aeffeb4de74e2fde4bd74fc7b4486jpeg.jpeg'
      ],
      tableData: [{

        name: '孤灯',
        oldname: '键盘',
        price: '20',
        introdution: '九成新',
        number: 12332112345
      }, {

        name: '孤灯',
        oldname: '键盘',
        price: '20',
        introdution: '九成新',
        number: 12332112345
      }, {

        name: '孤灯',
        oldname: '键盘',
        price: '20',
        introdution: '九成新',
        number: 12332112345
      }, {

        name: '孤灯',
        oldname: '键盘',
        price: '20',
        introdution: '九成新',
        number: 12332112345
      },
      {

        name: '孤灯',
        oldname: '键盘',
        price: '20',
        introdution: '九成新',
        number: 12332112345
      },
      {

        name: '孤灯',
        oldname: '键盘',
        price: '20',
        introdution: '九成新',
        number: 12332112345
      },
      {

        name: '孤灯',
        oldname: '键盘',
        price: '20',
        introdution: '九成新',
        number: 12332112345
      },
      {

        name: '孤灯',
        oldname: '键盘',
        price: '20',
        introdution: '九成新',
        number: 12332112345
      },
      {

        name: '孤灯',
        oldname: '键盘',
        price: '20',
        introdution: '九成新',
        number: 12332112345
      },
      {

        name: '孤灯',
        oldname: '键盘',
        price: '20',
        introdution: '九成新',
        number: 12332112345
      },
      {

        name: '孤灯',
        oldname: '键盘',
        price: '20',
        introdution: '九成新',
        number: 12332112345
      }]
    }
  }
}
</script>

<style >
  .old {
    position: absolute;
    top: 60px;

  }
  .img{
    position: absolute;
    width: 500px;
    height: 300px;
    top: 30px;
    left: 950px;
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
