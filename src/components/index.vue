<template>
  <!-- 图片 -->

         <el-carousel
           class="swiperUl"
           :type="swiperType"
           :height="swiperHeight"
           :initial-index="initialIndex"
           :trigger="trigger"
           :autoplay="autoplay"
           :interval="interval"
           :indicator-position="indicatorPosition"
           :arrow="arrow"
           :loop="loop"
           :direction="direction"
           @change="change"
           style="margin-top: 63px;width: 1480px;position: absolute;"
         >
           <el-carousel-item class="swiperli" v-for="(item,index) in swiperUrl" :key="'swiper'+index">
             <img :src="item.url" style="width: 100%;height: 100%;"/>
           </el-carousel-item>
         </el-carousel>
</template>

<script>

export default {
  props: {
    /**
       * 轮播类型
       * card/--
       * */
    swiperType: {
      type: String,
      default: 'card'
    },
    /**
       * 轮播高度
       * */
    swiperHeight: {
      type: String,
      default: '432px'
    },
    /**
       * 初始状态激活的幻灯片的索引，从 0 开始
       * */
    initialIndex: {
      type: Number,
      default: 0
    },
    /**
       * 指示器的触发方式
       * click/--
       * */
    trigger: {
      type: String,
      default: ''
    },
    /**
       * 是否循环显示
       * true/false
       * */
    loop: {
      type: Boolean,
      default: true
    },
    /**
       * 是否自动切换
       * true/false
       * */
    autoplay: {
      type: Boolean,
      default: true
    },
    /**
       * 自动切换的时间间隔，单位为毫秒
       * */
    interval: {
      type: Number,
      default: 3000
    },
    /**
       * 指示器的位置
       * outside/none
       * */
    indicatorPosition: {
      type: String,
      default: ''
    },
    /**
       * 切换箭头的显示时机
       * always/hover/never
       * */
    arrow: {
      type: String,
      default: 'hover'
    },
    /**
       * 走马灯展示的方向
       * horizontal/vertical
       * */
    direction: {
      type: String,
      default: 'horizontal'
    },
    /**
       * 轮播数据
       * */
    swiperUrl: {
      type: Array,
      default: () => {
        return [
          {
            url: require('../assets/img/p_school.jpg')
          }, {
            url: require('../assets/img/picture.jpg')
          }, {
            url: require('../assets/img/year.png')
          }, {
            url: require('../assets/img/p4.png')
          }, {
            url: require('../assets/img/p3.png')
          }, {
            url: require('../assets/img/landing.jpg')
          }

        ]
      }
    }

  }

  // =================
}

</script>

<style >
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
