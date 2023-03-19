<template>
  <div class="jobfabu">
    <img class="img1" src="../assets/img/job1.jpg" >
    <img class="img2" src="../assets/img/job2.jpg" >
    <img class="img3" src="../assets/img/job3.jpg" >
  <el-form ref="form" :model="form" label-width="80px">
    <el-form-item label="时间">
      <el-input v-model="form.time"></el-input>
    </el-form-item>

    <el-form-item label="联系人">
      <el-input v-model="form.contacts"></el-input>
    </el-form-item>

    <el-form-item label="地址">
      <el-input v-model="form.address"></el-input>
    </el-form-item>

    <el-form-item label="电话">
      <el-input v-model="form.number"></el-input>
    </el-form-item>
    <el-form-item label="职位">
      <el-input v-model="form.position"></el-input>
    </el-form-item>
    <el-form-item label="工资">
      <el-input v-model="form.wage"></el-input>
    </el-form-item>
    <el-form-item label="要求">
      <el-input v-model="form.require"></el-input>
    </el-form-item>

    <el-form-item>
      <el-button type="primary" @click="onSubmit">立即创建</el-button>

    </el-form-item>
  </el-form>
  </div>
</template>

<script>
export default {
  data () {
    return {
      form: {
        time: '',
        contacts: '',
        address: '',
        number: '',
        position: '',
        wage: '',
        resource: ''

      }
    }
  },
  methods: {
    onSubmit () {
      console.log('submit!')
    }
  }
}

</script>

<style >
  .jobfabu{
      position: absolute;
      top: 65px;
      left: 400px;
      width: 500px;
    }
    .el-form-item{
      height: 30px;
    }
    .img1{
      position: absolute;
      width: 400px;
      height: 400px;
      left: -400px;
    }
    .img2{
      position: absolute;
      width: 500px;
      height: 420px;
      right: -550px;
    }
    .img3{
      position: absolute;
      width: 300px;
      height: 300px;
      top: 60px;
      right: -450px;
    }
</style>
