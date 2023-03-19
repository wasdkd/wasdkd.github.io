<template>
<div class="required">
  <el-form :model="ruleForm" status-icon :rules="rules" ref="ruleForm" label-width="100px" class="demo-ruleForm">
    <h3 class="loginTitle">系统注册</h3>
    <el-form-item label="昵称" prop="nickname">
      <el-input  v-model="ruleForm.nickname" autocomplete="off"></el-input>
    </el-form-item>
    <el-form-item label="用户名" prop="username">
      <el-input  v-model="ruleForm.username" autocomplete="off"></el-input>
    </el-form-item>
    <el-form-item label="密码" prop="password">
      <el-input type="password" v-model="ruleForm.password" autocomplete="off"></el-input>
    </el-form-item>
    <el-form-item label="确认密码" prop="secondPassword">
      <el-input type="password" v-model="ruleForm.secondPassword" autocomplete="off"></el-input>
    </el-form-item>
    <el-form-item>
      <el-button type="primary" @click="submitForm('ruleForm')">提交</el-button>
      <el-button @click="resetForm('ruleForm')">重置</el-button>
      <el-button type="primary" plain  @click="tologin">返回登录</el-button>
    </el-form-item>
  </el-form>
</div>
</template>
<script>
export default {
  name: 'register',
  data () {
    var validateNickname = (rule, value, callback) => {
      if (value === '') {
        callback(new Error('请输入昵称'))
      }
    }
    var validateUsername = (rule, value, callback) => {
      if (value === '') {
        callback(new Error('请输入用户名'))
      }
    }
    var validatePass = (rule, value, callback) => {
      if (value === '') {
        callback(new Error('请输入密码'))
      } else {
        if (this.ruleForm.secondPassword !== '') {
          this.$refs.ruleForm.validateField('checkPass')
        }
        callback()
      }
    }

    var validatePass2 = (rule, value, callback) => {
      if (value === '') {
        callback(new Error('请再次输入密码'))
      } else if (value !== this.ruleForm.password) {
        callback(new Error('两次输入密码不一致!'))
      } else {
        callback()
      }
    }
    return {
      ruleForm: {
        nickname: '',
        username: '',
        password: '',
        secondPassword: ''
      },
      rules: {
        nickname: [
          { validator: validateNickname, trigger: 'blur' }
        ],
        username: [
          { validator: validateUsername, trigger: 'blur' }
        ],
        password: [
          { validator: validatePass, trigger: 'blur' }
        ],
        secondPassword: [
          { validator: validatePass2, trigger: 'blur' }
        ]

      }
    }
  },
  methods: {
    submitForm (formName) {
      this.axios({
        url: 'http://localhost:8888/user/register',
        method: 'post', // 方式
        data: {
          nickname: this.ruleForm.nickname,
          username: this.ruleForm.username,
          password: this.ruleForm.password,
          secondPassword: this.ruleForm.secondPassword
        }
      }).then(res => {
        let resp = res.data
        if (resp.code === 200) {
          this.$message({
            message: resp.message,
            type: 'success'
          })
        } else {
          this.$message({
            message: resp.message,
            type: 'warning'
          })
        }
      })
      this.$refs[formName].resetFields()
    },
    resetForm (formName) {
      this.$refs[formName].resetFields()
    },
    tologin () {
      console.log()
      this.$router.push('/login')
    }
  }
}
</script>

<style scoped>
.required{
  position: absolute;
  top: 210px;
  width: 600px;
  left: 450px;
  border-radius: 15px;
  background-clip: padding-box;
  padding: 15px 35px 15px 35px;
  background: #fff;
  border: 1px solid #eaeaea;
  box-shadow: 0 0 25px #cac6c6;
}
</style>
