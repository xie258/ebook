<template>
  <div class="container">
      <h2 class="title">登录</h2>
      <a-form ref="form" :model="form" class="form">
          <h2>用户登录</h2>
      <a-form-item>
          <a-input class="inputBox" v-model="form.username">
          </a-input>
      </a-form-item>
      <a-form-item>
          <a-input-password class="inputBox" v-model="form.password"></a-input-password>
      </a-form-item>
      <a-form-item>
          <a-button class="submit" type="primary" @click="onSubmit">登录</a-button>
      </a-form-item>
      </a-form>
  </div>
</template>

<script>
import { doLogin } from '@/api/login'

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
        async onSubmit() {
            let response = await doLogin(this.form.username, this.form.password)
            console.log(response)
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