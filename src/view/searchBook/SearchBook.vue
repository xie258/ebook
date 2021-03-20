<template>
  <div>
    <a-input-search
      placeholder="input search text"
      style="width: 60%"
      @search="onSearch"
    />
    <div style="background-color: #ececec; padding: 20px; margin-top: 100px">
      <a-row :gutter="16">
        <a-col :span="8">
          <a-card title="数学" :bordered="false" height="300px">
            <div @click ="gotoBook('mathSevenGradeBook')">
              <img
                width="200"
                height="200"
                src="https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=3788545761,2563632460&fm=26&gp=0.jpg"
              />
              <p style="margin-top: 20px">数学七年级上册</p>
            </div>
          </a-card>
        </a-col>
        <a-col :span="8">
          <a-card title="英语" :bordered="false" height="300px">
            <img
              width="200"
              height="200"
              src="https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=2753806415,2687891189&fm=26&gp=0.jpg"
            />
            <p style="margin-top: 20px">英语七年级上册</p>
          </a-card>
        </a-col>
        <a-col :span="8">
          <a-card title="语文" :bordered="false" height="300px">
            <img
              width="200"
              height="200"
              src="https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=3084064863,3818523404&fm=26&gp=0.jpg"
            />
            <p style="margin-top: 20px">语文七年级上册</p>
          </a-card>
        </a-col>
      </a-row>
    </div>
  </div>
</template>

<script>
export default {
  methods: {
    onSearch(value) {
      console.log(value);
    },
    gotoBook(bookName) {
      this.$router.push(bookName);
    }
  },
};
</script>