<template>
  <div>
    <div style="background-color: #ececec; padding: 20px; margin-top: 100px">
      <a-row :gutter="24">
        <a-col :span="8">
          <a-card title="数学" :bordered="false" height="300px">
            <div @click="gotoBook('mathSevenGradeBook')">
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
          <a-card title="生物" :bordered="false" height="300px">
            <div @click="gotoBook('biologySevenGradeBook')">
              <img
                width="200"
                height="200"
                src="https://p5.itc.cn/q_70/images03/20210123/f2f64346c425442e9c7e1e921c531286.jpeg"
              />
              <p style="margin-top: 20px">生物八年级下册</p>
            </div>
          </a-card>
        </a-col>
        <a-col :span="8">
          <a-card title="语文" :bordered="false" height="300px">
            <div @click="gotoBook('chineseSevenGradeBook')">
              <img
                width="200"
                height="200"
                src="http://p2.itc.cn/q_70/images03/20210102/675bdee8e32c4b668bf7df442f28e7a7.jpeg"
              />
              <p style="margin-top: 20px">语文九年级下册</p>
            </div>
          </a-card>
        </a-col>
      </a-row>
      <a-divider type="vertical" />
      <a-row :gutter="24">
        <a-col :span="8">
          <a-card title="动态电子书" :bordered="false" height="300px">
            <div @click="gotoBook('mathGeogebraBook')">
              <img
                width="200"
                height="200"
                src="https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=2287630695,4220964304&fm=26&gp=0.jpg"
              />
              <p style="margin-top: 20px">geogebra 可编辑教材</p>
            </div>
          </a-card>
        </a-col>
        <a-col :span="8">
          <a-card title="纪录片" :bordered="false" height="300px">
            <div @click="gotoVideo('hangtian')">
              <img
                width="200"
                height="200"
                :src="hangtianImageURl"
              />
              <p style="margin-top: 20px">中国航天日</p>
            </div>
          </a-card>
        </a-col>
                <a-col :span="8">
          <a-card title="纪录片" :bordered="false" height="300px">
            <div @click="gotoVideo('warm')">
              <img
                width="200"
                height="200"
                :src="warmImageURl"
              />
              <p style="margin-top: 20px">世界地球日，了解全球气候变暖</p>
            </div>
          </a-card>
        </a-col>
      </a-row>
    </div>
  </div>
</template>

<script>

import hangtianImageURl from '../../../static/img/航天纪录片.png'
import warmImageURl from '../../../static/img/全球变暖.png'

export default {
  data() {
    return {
      hangtianImageURl,
      warmImageURl,
    }
  },
  methods: {
    gotoBook(bookName) {
      this.$router.push(bookName);
    },
    gotoVideo(index) {
      this.$router.push(`/video?index=${index}`);
    },
  },
};
</script>