<template>
  <div class="container">
    <div class="titles">基于web的交互电子书阅读系统</div>
    <a-form ref="form" :model="form" class="form">
      <h2>用户登录</h2>
      <a-form-item>
        <a-input class="inputBox" v-model="form.username"> </a-input>
      </a-form-item>
      <a-form-item>
        <a-input-password
          class="inputBox"
          v-model="form.password"
        ></a-input-password>
      </a-form-item>
      <a-form-item>
        <a-radio-group v-model="form.types" @change="changeType">
          <a-radio :value="1"> 教师 </a-radio>
          <a-radio :value="2"> 学生 </a-radio>
        </a-radio-group>
      </a-form-item>
      <a-form-item>
        <a-button class="submit" type="primary" @click="onSubmit"
          >登录</a-button
        >
        <router-link to="/register">注册</router-link>
      </a-form-item>
    </a-form>
  </div>
</template>

<script>
import { doLogin } from "@/api/login";

export default {
  data() {
    return {
      user: "",
      pwd: "",
      form: {
        username: "",
        password: "",
        types: 1
      }
    };
  },
  methods: {
    async onSubmit() {
      if (this.form.username.trim() === '') {
        this.$message.error("账号名不能为空");
        return;
      }
      if (this.form.password.trim() === '') {
        this.$message.error("密码不能为空");
        return;
      }
      const response = await doLogin(this.form);
      console.log("sss");
      if (response.data.status === 200) {
        this.$router.push("/home");
        this.$store.commit("setUsername", this.form.username);
        localStorage.setItem("username", this.form.username);
        localStorage.setItem("types", this.form.types);
        console.log(response.data);
        localStorage.setItem("token", response.data.data);
        this.$message.info("login success");
      } else {
        this.$message.error("账号或者密码错误");
      }
    },
    goto(path) {
      this.$router.push(path);
    },
    changeType(e) {
      this.form.types = e.target.value;
      console.log(e.target.value);
    }
  }
};
</script>

<style scoped>
.form {
  width: 565px;
  height: 372px;
  margin: 0 auto;
  padding: 40px 40px;
}

.container {
  position: absolute;
  width: 100%;
  height: 100%;
}

.title {
  color: #fff;
  text-align: center;
  margin: 150px 0;
  font-size: 48px;
  font-family: Microsoft Yahei;
}

.titles {
  text-align: center;
  margin: 100px 0;
  font-size: 48px;
  font-family: Microsoft Yahei;
}

.submit {
  width: 100%;
  height: 45px;
  font-size: 16px;
}

.inputBox {
  height: 45px;
}
</style>
