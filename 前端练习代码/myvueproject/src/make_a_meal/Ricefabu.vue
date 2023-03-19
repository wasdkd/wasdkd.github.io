<template>
  <div class="ricefabu">
<el-form ref="form" :model="form" label-width="80px">
  <el-form-item label="用户名">
    <el-input v-model="form.name"></el-input>
  </el-form-item>

<el-form-item label="电话">
    <el-input v-model="form.number"></el-input>
  </el-form-item>

<el-form-item label="地址">
    <el-input v-model="form.address"></el-input>
  </el-form-item>
  <el-form-item label="配送时间">
    <el-col :span="11">
      <el-date-picker type="date" placeholder="选择日期" v-model="form.date1" style="width: 100%;"></el-date-picker>
    </el-col>
    <el-col class="line" :span="2">-</el-col>
    <el-col :span="11">
      <el-time-picker placeholder="选择时间" v-model="form.date2" style="width: 100%;"></el-time-picker>
    </el-col>
  </el-form-item>
  <el-form-item label="要求">
    <el-input type="textarea" v-model="form.require"></el-input>
  </el-form-item>
  <el-form-item>
    <el-button type="primary" @click="submitForm('ruleForm')">立即发布</el-button>

  </el-form-item>
</el-form>
</div>
</template>

<script>
export default {
  data () {
    return {
      form: {
        name: '',
        number: '',
        address: '',
        date1: '',
        date2: '',
        require: ''

      },
      rules: {
        name: [
          { required: true, message: '请输入用户名', trigger: 'blur' },
          { min: 2, max: 999, message: '最小长度为2', trigger: 'blur' }
        ],
        number: [
          { required: true, message: '请输入电话号', trigger: 'blur' },
          { min: 11, max: 11, message: '手机号格式不正确', trigger: 'blur' }
        ],
        date1: [
          { type: 'date', required: true, message: '请选择日期', trigger: 'change' }
        ],
        date2: [
          { type: 'date', required: true, message: '请选择时间', trigger: 'change' }
        ]
      }
    }
  },

  methods: {
    submitForm (formName) {
      this.$refs[formName].validate((valid) => {
        if (valid) {
          alert('submit!')
        } else {
          console.log('error submit!!')
          return false
        }
      })
    }

  }
}

</script>

<style type="text/css">
  .ricefabu{
    width: 650px;
    margin-left: 60px;
  }
</style>
