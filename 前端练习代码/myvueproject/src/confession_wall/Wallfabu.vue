<template>
  <div class="lostpick">
<el-form ref="form" :model="form" label-width="80px">
  <el-form-item label="用户名">
    <el-input v-model="form.name"></el-input>
  </el-form-item>
  <el-form-item label="时间">
    <el-col :span="11">
      <el-date-picker type="date" placeholder="选择日期" v-model="form.date1" style="width: 100%;"></el-date-picker>
    </el-col>
    <el-col class="line" :span="2">-</el-col>
    <el-col :span="11">
      <el-time-picker placeholder="选择时间" v-model="form.date2" style="width: 100%;"></el-time-picker>
    </el-col>
  </el-form-item>
  <el-form-item label="发布信息">
    <el-input type="textarea" v-model="form.require"></el-input>
  </el-form-item>
  <div class="img">
  <el-upload class="avatar-uploader"
      ref="otherLicense"
      action
      :auto-upload="false"
      :on-preview="handlePicPreview"
      :on-remove="handleRemove"
      :file-list="fileList"
      :on-change="otherSectionFile"
      list-type="picture-card"
      multiple>
      <i class="el-icon-plus avatar-uploader-icon"></i>
    </el-upload>
    <el-dialog :visible.sync="dialogVisible">
      <img width="100%" :src="dialogImageUrl" class="avatar">
    </el-dialog>
    </div>
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
        date1: '',
        date2: '',
        require: ''
      },
      fileList: {},
      dialogVisible: false,
      dialogImageUrl: ''

    }
  },

  handlePicPreview (file) {
    this.dialogImageUrl = file.url
    this.dialogVisible = true
  },
  handleRemove (file, fileList) {
    this.fileList.map((item, index) => {
      if (item.uid === file.uid) {
        this.fileList.splice(index, 1)
      }
    })
  },
  beforeRemove (file, fileList) {
    return this.$confirm(`确定移除 ${file.name}？`)
  },

  otherSectionFile (file) {
    const typeArr = ['image/png', 'image/gif', 'image/jpeg', 'image/jpg']
    const isJPG = typeArr.indexOf(file.raw.type) !== -1
    const isLt10M = file.size / 1024 / 1024 < 10
    if (!isJPG) {
      this.$message.error('只能是图片!')
      this.$refs.upload.clearFiles()
      this.otherFiles = null
      return
    }
    if (!isLt10M) {
      this.$message.error('上传图片大小不能超过 10MB!')
      this.$refs.upload.clearFiles()
      this.otherFiles = null
      return
    }
    this.otherFiles = file.raw
    // FormData 对象
    var formData = new FormData()
    // 文件对象
    formData.append('file', this.otherFiles)
    let config = {
      headers: {
        'Content-Type': 'multipart/form-data'
      },
      methods: 'post'
    }
    this.axios.post('/api/upload/getObjectId', formData, config).then(res => {
      this.fileList.push(file)
      if (res.data.flag === 'S') {
        this.otherPhotoObj = res.data.data.objectId
        this.otherPhoto = res.data.data.url
        this.otherLicense.push({
          certificationName: this.form.certificationName,
          certificationObj: this.otherPhotoObj,
          certificationUrl: this.otherPhoto
        })
      } else {
        this.$message.error(res.data.message)
      }
    })
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
  .lostpick{
    width: 500px;
    margin-left: 60px;
  }
  .img{
    position: absolute;
    top: 120px;
    right: 500px;
  }
  .avatar-uploader /deep/ .el-upload {/* 方框样式 */
      border: 1px dashed #d9d9d9;
      border-radius: 6px;
      background-color: #fff;
      cursor: pointer;
      position: relative;
      overflow: hidden;
      width: 180px;
      height: 180px;
    }
    .avatar-uploader .el-upload:hover {/* 鼠标移动到方框 */
      border-color: #409EFF;
    }
  .avatar-uploader-icon {/* 方框里的十字架 */
      font-size: 28px;
      color: #8c939d;
      width: 178px;
      height: 178px;
      line-height: 178px;
      margin-left: -10px;
      margin-top: -15px;
    }
  .avatar-uploader /deep/ .el-upload-list__item {
      overflow: hidden;
      background-color: #fff;
      border: 1px solid #c0ccda;
      border-radius: 6px;
      box-sizing: border-box;
      width: 180px;
      height: 180px;
      margin: 0 8px 8px 0;
      display: inline-block;
  }
</style>
