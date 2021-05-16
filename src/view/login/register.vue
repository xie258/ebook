<template>
  <div class="container">
    <a-form ref="form" :model="form" class="form">
      <h2>用户注册</h2>
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
        <a-radio-group
          v-model="form.types"
          :defaultValue="1"
          @change="changeType"
        >
          <a-radio :value="1"> 教师 </a-radio>
          <a-radio :value="2"> 学生 </a-radio>
        </a-radio-group>
      </a-form-item>
      <a-form-item>
        <a-button class="submit" type="primary" @click="onSubmit"
          >注册</a-button
        >
        <router-link to="/login">登录</router-link>
      </a-form-item>
    </a-form>
  </div>
</template>

<script>
import { doRegister } from "@/api/register";

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
    onSubmit() {
      if (this.form.username.trim() === "") {
        this.$message.error("账号名不能为空");
        return;
      }
      if (this.form.password.trim() === "") {
        this.$message.error("密码不能为空");
        return;
      }
      doRegister(this.form)
        .then(res => {
          console.log(res);
          if (res.data.status === 400) {
            this.$message.error("账号注册失败，请换一个账号尝试");
            console.error(res.data.data)
          } else if (res.data.status === 200) {
            this.$message.info("register success");
            this.goto("login");
          }
        })
        .catch(err => {
          console.log(err);
          this.$message.error(err.data);
        });
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
