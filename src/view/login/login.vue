<template>
  <div class="container">
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
        username: "admin",
        password: "123456",
        types: 1,
      },
    };
  },
  methods: {
    async onSubmit() {
      const response = await doLogin(this.form);
      console.log("sss")
      if (response.data.status === 200) {
        this.$router.push("/home");
        this.$store.commit("setUsername", this.form.username);
        localStorage.setItem('username', this.form.username);
        console.log(response.data)
        localStorage.setItem("token",response.data.data)
        this.$message.info("login success");
      } else {
        this.$message.error(response.data.data);
      }
    },
    goto(path) {
      this.$router.push(path);
    },
    changeType(e) {
      this.form.types = e.target.value;
      console.log(e.target.value);
    },
  },
};
</script>

<style>
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

.submit {
  width: 100%;
  height: 45px;
  font-size: 16px;
}

.inputBox {
  height: 45px;
}
</style>