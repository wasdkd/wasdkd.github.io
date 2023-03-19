import Vue from 'vue'
import Router from 'vue-router'
import index from '../components/index.vue'

import Help from '../components/Help.vue'
import Registration from '../components/Registration.vue'
import Login from '../components/Login.vue'
import About from '../components/About.vue'
import Fruit from '../components/Fruit.vue'

import Account from '../my_account/Account.vue'

import Rice from '../make_a_meal/Rice.vue'
import Ricedingdan from '../make_a_meal/Ricedingdan.vue'
import Ricefabu from '../make_a_meal/Ricefabu.vue'

import Water from '../water_lifting/Water.vue'
import Waterdingdan from '../water_lifting/Waterdingdan.vue'
import Waterfabu from '../water_lifting/Waterfabu.vue'

import Lost from '../lost_and_found/Lost.vue'
import Lostmsg from '../lost_and_found/Lostmsg.vue'
import Lostpick from '../lost_and_found/Lostpick.vue'
import Lostlose from '../lost_and_found/Lostlose.vue'

import Teacher from '../components/Teacher.vue'
import Student from '../components/Student.vue'
import Contact from '../components/Contact.vue'

import Wall from '../confession_wall/Wall.vue'
import Wallmsg from '../confession_wall/Wallmsg.vue'
import Wallfabu from '../confession_wall/Wallfabu.vue'

import Buy from '../purchaing_agent/Buy.vue'
import Buydingdan from '../purchaing_agent/Buydingdan.vue'
import Buyfabu from '../purchaing_agent/Buyfabu.vue'

import Secondhand from '../second-hand_transation/Secondhand.vue'
import Old_thing from '../second-hand_transation/Oid_thing.vue'
import Oldrelease from '../second-hand_transation/Oldrelease.vue'

import Job from '../part-time_job/Job.vue'
import Dayjob from '../part-time_job/Dayjob.vue'
import Jobfabu from '../part-time_job/Jobfabu.vue'

import My from '../my/My.vue'
import Myrice from '../my/Myrice.vue'
import Mywater from '../my/Mywater.vue'
import Mylost from '../my/Mylost.vue'
import Mybuy from '../my/Mybuy.vue'
import Myoldthing from '../my/Myoldthing.vue'
import Mywall from '../my/Mywall.vue'
Vue.use(Router)


  export default new Router ({
  mode:'history',//去掉地址栏中默认的#
  routes: [
    {
      path: '/',
      name: 'index',
      component: index
    },
    
    {
      path:'/login',
      name:'Login',
      component:Login
    },
    {
      path:'/registration',
      name:'Registration',
      component:Registration
    },
    
    {
      path: '/job',
      name: 'Job',
      component: Job,
      children:[
       {
         path:'/dayjob',
         name:'Dayjob',
         component:Dayjob
       },
       {
         path:'/jobfabu',
         name:'Jobfabu',
         component:Jobfabu
       },
       ]
    },
    {
      path: '/fruit',
      name: 'Fruit',
      component: Fruit
    },


    {
      path:'/about',
      name:'About',
      component:About
    },
    {
      path:'/account',
      name:'Account',
      component:Account
    },
    {
      path:'/my',
      name:'/My',
      component:My,
      children: [
        {
          path:'/myrice',
          name:'Myrice',
          component:Myrice,
        },
        {
          path:'/mywater',
          name:'Mywater',
          component:Mywater,
        },
        {
          path:'/mylost',
          name:'Mylost',
          component:Mylost,
        },
        {
          path :'/mybuy',
          name :'Mybuy',
          component:Mybuy,
        },
        {
          path :'/myoldthing',
          name :'Myoldthing',
          component:Myoldthing,
        },
        {
          path :'/mywall',
          name :'Mywall',
          component:Mywall,
        },
        ]
    },
    {
      path:'/teacher',
      name:'Teacher',
      component:Teacher
    },
    {
      path:'/student',
      name:'Student',
      component:Student
    },
    {
      path:'/contact',
      name:'Contact',
      component:Contact
    },
    {
      path:'/wall',
      name:'Wall',
      component:Wall,
      children: [
        {
          path:'/wallmsg',
          name:'Wallmsg',
          component:Wallmsg,
        },
        {
          path:'/wallfabu',
          name:'Wallfabu',
          component:Wallfabu,
        }
      ]
    },
    {
      path: '/secondhand',
      name: 'Secondhand',
      component: Secondhand,
       children:[

        {
          path:'/oldthing',
          name:'Old_thing',
          component:Old_thing
        },


        {
          path:'/oldrelease',
          name:'Oldrelease',
          component:Oldrelease
        }
        ]

    },
    {
      path:'/help',
      name:'Help',
      component:Help,
      children: [
          {
            path:'/rice',
            name:'Rice',
            component:Rice,
            children:[
              {
                  path:'/ricedingdan',
                  name:'Ricedingdan',
                  component:Ricedingdan,
              },
              {
                  path:'/ricefabu',
                  name:'Ricefabu',
                  component:Ricefabu,
              }
            ]
          },
          {
            path:'/buy',
            name:'Buy',
            component:Buy,
            children:[
              {
                  path:'/buydingdan',
                  name:'Buydingdan',
                  component:Buydingdan,
              },
              {
                  path:'/buyfabu',
                  name:'Buyfabu',
                  component:Buyfabu,
              }
            ]
          },
          {
            path:'/water',
            name:'Water',
            component:Water,
            children:[
              {
                  path:'/waterdingdan',
                  name:'Waterdingdan',
                  component:Waterdingdan,
              },
              {
                  path:'/waterfabu',
                  name:'Waterfabu',
                  component:Waterfabu,
              },
              ]
          },
          {
            path:'/lost',
            name:'Lost',
            component:Lost,
            children:[
              {
                  path:'/lostmsg',
                  name:'Lostmsg',
                  component:Lostmsg,
              },
              {
                  path:'/lostpick',
                  name:'Lostpick',
                  component:Lostpick,
              },
              {
                  path:'/lostlose',
                  name:'Lostlose',
                  component:Lostlose,
              },
              ]
          },
        ]
    },


  ]
})
