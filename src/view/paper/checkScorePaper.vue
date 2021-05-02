<template>
  <div>
    <div class="title">试卷名称: {{ paperName }}</div>
    <div class="description">介绍: {{ paperName }}</div>
    <div class="score">总分： {{ score }}</div>

    <div style="text-align: left; margin-bottom: 5px; margin-top: 10px">
      一、选择题
    </div>
    <a-form :label-col="{ span: 1 }" :wrapper-col="{ span: 5 }">
      <div v-for="(d, index) in choiceQustion" :key="`${index}${d.title}`">
        <div style="text-align: left; margin-bottom: 5px; margin-top: 10px">
          {{ "题目" + (index + 1) + ": " + d.title }}
          <span style="margin-left: 300px"> 评分：{{ d.score }} </span>
        </div>
        <a-form-item>
          <a-radio-group name="radioGroup" v-model="d.answerTrue" disabled>
            <a-radio :value="1">
              {{ d.answerA }}
            </a-radio>
            <a-radio :value="2">
              {{ d.answerB }}
            </a-radio>
            <a-radio :value="3">
              {{ d.answerC }}
            </a-radio>
            <a-radio :value="4">
              {{ d.answerD }}
            </a-radio>
          </a-radio-group>
        </a-form-item>
      </div>

      <div style="text-align: left; margin-bottom: 5px; margin-top: 10px">
        二、问答题
      </div>
      <div v-for="(d, index) in askQustion" :key="index">
        <div style="text-align: left; margin-bottom: 5px; margin-top: 10px">
          {{ "题目" + (index + 1) + ": " + d.title }}
          <span style="margin-left: 300px"> 评分：{{ d.score }} </span>
        </div>
        <div style="text-align: left">
          答案：{{d.answer}}
        </div>
      </div>
    </a-form>
    <a-button type="primary" @click="back">返回</a-button>
  </div>
</template>

<script>
import paperSelect from "../../components/testPaper/paper-select.vue";
import PaperSelectShow from "../../components/testPaper/paper-select-show.vue";

import { doGetScorePaperOne, doSubmitPaper } from "@/api/paper";

export default {
  components: {
    paperSelect,
    PaperSelectShow,
  },
  data() {
    return {
      choiceQustion: [],
      askQustion: [],
      choiceQustionVisible: false,
      selectData: "",
      askQustionVisible: false,
      askquestionContent: "",
      paperName: "22",
      paperDescription: "44",
      paperId: null,
      score: null,
      stuPaperId: null,
    };
  },
  mounted() {
    this.stuPaperId = this.$route.query.stuPaperId;
    this.paperId = this.$route.query.paperId;
    this.getOnePaper(this.stuPaperId);
  },
  methods: {
    async getOnePaper(stuPaperId) {
      const response = await doGetScorePaperOne({stuPaperId});
      console.log(response);
      if (response.data.status === 200) {
        this.choiceQustion = JSON.parse(response.data.data[0].selectContent);
        this.askQustion = JSON.parse(response.data.data[0].askContent);
        this.score = response.data.data[0].score;
      } else {
        this.$message.error(response.data.data);
      }
    },
    async back() {
      if (localStorage.getItem('types') === '1' ) {
      this.$router.push(`/classPaper?paperId=${this.paperId}`);
      } else {
        this.$router.push(`/studentPaper`)
      }

    },
  },
};
</script>

<style scoped>
.title {
  width: 300;
  font-size: 30px;
}

.description {
  width: 300;
  font-size: 20px;
}

.score {
  width: 300;
  font-size: 25px;
}
</style>

