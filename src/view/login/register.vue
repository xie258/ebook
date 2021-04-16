<template>
  <div class="container">
      <a-form ref="form" :model="form" class="form">
          <h2>用户注册</h2>
      <a-form-item>
          <a-input class="inputBox" v-model="form.username">
          </a-input>
      </a-form-item>
      <a-form-item>
          <a-input-password class="inputBox" v-model="form.password"></a-input-password>
      </a-form-item>
      <a-form-item>
          <a-button class="submit" type="primary" @click="onSubmit">注册</a-button>
          <router-link to="/login">登录</router-link>
      </a-form-item>
      </a-form>
  </div>
</template>

<script>
import { doRegister } from '@/api/register'



export default {
    data() {
        return {
            user: '',
            pwd: '',
            form: {
                username: "admin",
                password: "password",
            }
        }
    },
    methods: {
        onSubmit() {
            doRegister(this.form.username, this.form.password)
            .then((res => {
                console.log(res)
            })).catch(err => {
                console.log(err)
                 this.$message.error(err.data);
            })
        },
            goto(path) {
      this.$router.push(path);
    }
    }
}
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