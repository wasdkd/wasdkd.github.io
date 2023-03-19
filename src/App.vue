<template>
  <div id="app">
      <el-container>
         <el-header>
          <div>
         <img class="logo" src="./assets/img/logo.jpg" >
         <img class="name" src="./assets/img/name.png" >

         </div>

         <!-- 搜索框 -->

         <div class="fond" style="margin-top: 50px;width: 300px;margin-left: 1120px;">
           <el-input placeholder="请输入内容" v-model="input" class="input-with-select">
             <el-button slot="append" icon="el-icon-search"></el-button>
           </el-input>
         </div>
         <el-menu
             :default-active="activeIndex"
             :router="true"
             class="el-menu-demo"
             mode="horizontal"
             @select="handleSelect"
             background-color="#545c64"
             text-color="#fff"
             active-text-color="#ffd04b"
             style="position: absolute;
         width: 1480px;top: 130px;">
             <el-menu-item index="1" @click="toindex">首 页</el-menu-item>
             <el-menu-item index="2" @click="tohelp"> 校 园 日 常 帮 手 </el-menu-item>
               <!-- <template slot="title">校 园 日 常 帮 手</template>
               <el-menu-item index="2-1" @click="tohelp"> 打 饭 </el-menu-item>
               <el-menu-item index="2-2"> 抬 水 </el-menu-item>
               <el-menu-item index="2-3">失 物 招 领</el-menu-item>
             </el-submenu> -->
             <el-menu-item index="3" @click="tojob">人 人 兼 职</el-menu-item>
              <el-menu-item index="4" @click="tosecondhand">二 手  交 易</el-menu-item>
             <el-menu-item index="5" @click="tofruit">水 果 销 售</el-menu-item>
             <el-menu-item index="6" @click="towall">表 白 墙</el-menu-item>
             <el-menu-item index="7" class="index4" type="primary" @click="login"> 登 录 </el-menu-item>

           </el-menu>
         </el-header>

         <el-main>

             <router-view></router-view>
         </el-main>

         <el-footer>
           <el-row style="margin-top: 550px;width: 1480px;position: absolute;">
             <el-button style="margin-left: 30px;position: absolute;" @click="toabout" type="success" plain>关于我们</el-button>
             <el-button style="margin-left: 285px;position: absolute;" @click="toaccount" type="success" plain>.....///....</el-button>
             <el-button style="margin-left: 545px;position: absolute;" @click="tomy" type="success" plain>我发布的</el-button>
             <el-button style="margin-left: 775px;position: absolute;" @click="toteacher" type="success" plain>指导老师</el-button>
             <el-button style="margin-left: 1055px;position: absolute;" @click="tostudent" type="success" plain>学生团队</el-button>
             <el-button style="margin-left: 1325px;position: absolute;" @click="tocontact" type="success" plain>联系我们</el-button>
           </el-row>
         </el-footer>

       </el-container>

  </div>
</template>

<script>
export default {

  data () {
    return {
      activeIndex: '1',
      input: ''
    }
  },
  created () {
    this.activeIndex = this.$route.path
  },
  methods: {
    handleSelect (key, keyPath) {
      console.log(key, keyPath)
    },

    toindex (path) {
      console.log(path)
      this.$router.push('/')
    },
    login (path) {
      console.log(path)
      this.$router.replace('/login')
    },
    toabout (path) {
      console.log(path)
      this.$router.push('/about')
    },
    tohelp (path) {
      console.log(path)
      this.$router.push('/ricedingdan')
    },
    toteacher (path) {
      console.log(path)
      this.$router.push('/teacher')
    },
    tostudent (path) {
      console.log(path)
      this.$router.push('/student')
    },
    tocontact (path) {
      console.log(path)
      this.$router.push('/contact')
    },
    towall (path) {
      console.log(path)
      this.$router.push('/wallmsg')
    },
    tosecondhand (path) {
      console.log(path)
      this.$router.push('/oldthing')
    },
    tomy (path) {
      console.log(path)
      this.$router.push('/myrice')
    },
    toaccount (path) {
      console.log(path)
      this.$router.push('/account')
    },
    tofruit (path) {
      console.log(path)
      this.$router.push('/fruit')
    },
    tojob (path) {
      console.log(path)
      this.$router.push('/dayjob')
    }
  }
}
</script>

<style>
 .el-header {
    background-color: #ffffff;
    color: #333;
    text-align: /* center */left;
    line-height: 20px;

  }

  .el-footer {
    background-color: #ffffff;
    color: #333;
    text-align: left ;
    line-height: 20px;

  }

  .el-main {
    background-color: #ffffff;
    color: #333;
    margin-top: 40px;
    text-align: center;
    line-height: 50px;

  }

  body>.el-container {
    margin-bottom: 40px;
  }
  /* 头部图片 */
  .logo{
    width: 110px;
    height: 110px;
    position: absolute;
    top: 10px;
    left: 70px;
  }
  .name{
    position: absolute;
    width: 450px;
    height: auto;
    top: 40px;
    left: 510px;
    right: 450px;
  }
  .el-select .el-input {
      width: 130px;
    }
  .el-input-group__prepend {
      background-color: #fff;
    }

    .index4 {
      position: absolute;
      right: 0;
    }

        .swiperUl{
          .swiperli{
            img{
              @include wh(100%,100%);
            }
          }

          .is-active{
            transform: translateX(230px) scale(1)!important;
            width: 1080px;
          }
        }

        .el-carousel__item:nth-child(2n) {
          background-color: #99a9bf;
        }

        .el-carousel__item:nth-child(2n+1) {
          background-color: #d3dce6;
        }
</style>
