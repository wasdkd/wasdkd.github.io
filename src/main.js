//配置文件
// The Vue build version to load with the `import` command
// (runtime-only or standalone) has been set in webpack.base.conf with an alias.
import Vue from 'vue'
import App from './App'
import router from './router'//导入路由
import axios from 'axios'//引入axios依赖
import ElementUI from 'element-ui';
import 'element-ui/lib/theme-chalk/index.css';
import api from './utils/api.js'
Vue.config.productionTip = false

Vue.prototype.$api = api;
Vue.use(ElementUI);
//设置让其他页面都可以直接使用axios,设置axios为全局属性
Vue.prototype.$axios = axios
/* eslint-disable no-new */
new Vue({
  el: '#app',
  router,
  components: { App },
  template: '<App/>'
})
