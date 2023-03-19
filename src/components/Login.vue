<template>
  <div>

    <el-form :model="ruleForm" :rules="rules" ref="ruleForm" class="demo-ruleForm">
      <h3 class="loginTitle">系统登录</h3>
      <el-form-item prop="username">
        <el-input type="text" placeholder="请输入手机号" auto-complete="false" v-model="ruleForm.username"></el-input>
      </el-form-item>
      <el-form-item prop="password">
        <el-input type="password" auto-complete="false" placeholder="请输入密码" v-model="ruleForm.password"></el-input>
      </el-form-item>
   <!--   <el-form-item prop="code">
        <el-input type="text" auto-complete="false" v-model="ruleForm.code"
          placeholder="点击图片
        更新验证码" style="width: 250px;margin-right: 75px;"></el-input>
        <img :src="captchaUrl" @click="updataCaptcha">

      </el-form-item> -->

        <el-checkbox  v-model="checked" class="loginRemember">记住我</el-checkbox>
        <el-button type="primary" @click="submitruleForm" style="width: 100%;">登录</el-button>
        <el-button type="primary" plain  @click="toregistration">注册</el-button>

    </el-form>

  </div>
</template>

<script>
export default {
  name: 'Login',
  data () {
    return {
      // 获取url地址后面的参数

      captchaUrl: '/captcha?time=' + new Date(),
      ruleForm: {
        username: '',
        password: ''
        // code: ''
      },
      checked: true,
      rules: {
        username: [{
          required: true,
          message: '请输入用户名',
          trigger: 'blur'
        }],
        password: [{
          required: true,
          message: '请输入密码',
          trigger: 'blur'
        }]
        /*   code: [{
          required: true,
          message: '请输入验证码',
          trigger: 'blur'
        }] */
      }
    }
  },
  methods: {
    submitruleForm () {
      this.$refs.ruleForm.validate((valid) => {
        if (valid) {
          this.$message({
            message: '恭喜你，这是一条成功消息',
            type: 'success'
          })
        } else {
          this.$message.error('请输入所有字段!')
          return false
        }
      })
    },
    toregistration (path) {
      console.log(path)
      this.$router.push('/registration')
    }

  }
}
</script>

<style scoped>
  .loginTitle{
    margin: 0px auto 40px auto;
    text-align: center;
  }
 .demo-ruleForm{
   position: absolute;
   top: 50px;
   left: 500px;
   right: 500px;
   border-radius: 15px;
   background-clip: padding-box;
   margin: 180px auto;
   width: 350px;
   padding: 15px 35px 15px 35px;
   background: #fff;
   border: 1px solid #eaeaea;
   box-shadow: 0 0 25px #cac6c6;
 }
 .loginRemember{
   text-align: left;
   margin: 0px 0px 15px 0px;
 }
  .el-form-item-content{
    display: flex;
    align-items: center;
  }
</style>
