<template>
  <div class="fruit">
    <img class="img1" src="../assets/img/fruit.jpg" >
    <img class="img2" src="../assets/img/fruit2.jpg" >
    <el-table :data="tableData" height="490" border  style="width: 100%" >

      <el-table-column prop="fruitname" label="水果名" width="120">
      </el-table-column>

      <el-table-column prop="price" label="价格" width="120">
      </el-table-column>
      <el-table-column prop="introdution" label="水果介绍" width="200">
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

        fruitname: '西瓜',
        price: '2/斤',
        introdution: '新鲜无农药西瓜'

      }, {

        fruitname: '西瓜',
        price: '2/斤',
        introdution: '新鲜无农药西瓜'
      }, {

        fruitname: '西瓜',
        price: '2/斤',
        introdution: '新鲜无农药西瓜'
      }, {

        fruitname: '西瓜',
        price: '2/斤',
        introdution: '新鲜无农药西瓜'
      },
      {

        fruitname: '西瓜',
        price: '2/斤',
        introdution: '新鲜无农药西瓜'
      },
      {

        fruitname: '西瓜',
        price: '2/斤',
        introdution: '新鲜无农药西瓜'
      },
      {

        fruitname: '西瓜',
        price: '2/斤',
        introdution: '新鲜无农药西瓜'
      },
      {

        fruitname: '西瓜',
        price: '2/斤',
        introdution: '新鲜无农药西瓜'
      },
      {
        fruitname: '西瓜',
        price: '2/斤',
        introdution: '新鲜无农药西瓜'
      },
      {

        fruitname: '西瓜',
        price: '2/斤',
        introdution: '新鲜无农药西瓜'
      },
      {

        fruitname: '西瓜',
        price: '2/斤',
        introdution: '新鲜无农药西瓜'
      }]
    }
  }
}
</script>

<style scoped>
  .fruit{
    position: absolute;
    margin-top: 70px;
    margin-left: 450px;

  }
  .img1{
      position: absolute;
      width: 300px;
      height: 450px;
      top: 30px;
      left: 690px;
    }
    .img2{
      position: absolute;
      width: 400px;
      height: 450px;
      top: 30px;
      left: -450px;
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
      color: black;
    }
    /* ============ */

</style>
