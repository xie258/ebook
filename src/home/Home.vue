<template>
  <div>
    <!-- <div class="head"></div>
        <span style="font-family:KaiTi;float:left;margin-left:30px;font-size:25px;color:orange">
              基于web的交互电子书
        </span>

      <span style="font-family:SimHei;float:left;margin-left:150px;font-size:20px;color:black">
               <a-icon type="home" />首页
        </span>
     <span style="font-family:SimHei;float:left;margin-left:50px;font-size:20px;color:black">
              电子课本
        </span>
    </div>-->

    <a-layout id="components-layout-demo-top-side-2">
      <a-layout>
        <a-layout-content class="header">
          <div class="logo" >基于web的交互电子书阅读系统</div>
          <a-menu
            theme="dark"
            mode="horizontal"
            :default-selected-keys="['2']"
            :style="{ lineHeight: '64px' }"
          >
            <a-menu-item key="1">
              <router-link to="/searchEbook">浏览书籍</router-link>
            </a-menu-item>
            <a-menu-item key="2">
              <router-link to="/managePaper">试卷</router-link>
            </a-menu-item>
            <a-menu-item key="3">
              <router-link to="/class">班級</router-link>
            </a-menu-item>
            <a-menu-item key="4">
              <router-link to="/searchBook">電子書</router-link>
            </a-menu-item>
            <a-menu-item key="5">
              <router-link to="bbs/">論壇</router-link>
            </a-menu-item>
          </a-menu>
        </a-layout-content>
        <a-layout-sider class="slider">
            <a-dropdown>
    <a class="ant-dropdown-link" @click="e => e.preventDefault()">
     {{username}} <a-icon type="down" />
    </a>
    <a-menu slot="overlay"  style="width: 100px;">
      <a-menu-item>
        <a @click="logout" >logout</a>
      </a-menu-item>
    </a-menu>
  </a-dropdown>
          </a-layout-sider>
      </a-layout>
      <a-layout>
        <a-layout style="padding: 0 24px 24px">
          <a-layout-content
            :style="{
              background: '#fff',
              padding: '24px',
              margin: 0,
              minHeight: '280px',
            }"
          >
            <router-view />
          </a-layout-content>
        </a-layout>
      </a-layout>
    </a-layout>
  </div>
</template>
<script>

import { doLogout } from '@/api/login'

export default {
  data() {
    return {
      collapsed: false,
      username: localStorage.getItem('username'),
    };
  },
  mounted() {
  },
  methods: {
    async logout() {
      const request = {};
      request.username = this.username;
      const response = await doLogout(request);
      if (response.data.status === 200) {
        this.$router.push("/login");
        console.log(response.data);
        this.$message.info("logout success");
      } else {
        this.$message.error(response.data.data);
      }
      localStorage.removeItem('token');
    }
  }
};
</script>

<style>
#components-layout-demo-top-side-2 .logo {
  width: 250px;
  height: 24px;
  background: rgba(255, 255, 255, 0.2);
  margin: 16px 40px 16px 0;
  float: left;
  color: #FFF
}

.slider {
  width: 120px;
  height: 31px;
  background: rgba(255, 255, 255, 0.2);
  margin: 16px 28px 16px 0;
  float: right;
}

.header {
  position: relative;
  top: auto;
}

.head {
  height: 80px;
  width: 100%;
  position: fixed;
  top: 0;
  margin-top: 10px;
  border: 1ch;
}

.content {
  height: 1400px;
  background: orange;
  margin-top: 80px;
}
</style>
