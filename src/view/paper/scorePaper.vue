<template>
  <div>
    <div class="title">试卷名称: {{ paperName }}</div>
    <div class="description">介绍: {{ paperName }}</div>

    <div style="text-align: left; margin-bottom: 5px; margin-top: 10px">
      一、选择题
    </div>
    <a-form :label-col="{ span: 1 }" :wrapper-col="{ span: 5 }">
      <div v-for="(d, index) in choiceQustion" :key="`${index}${d.title}`">
        <div style="text-align: left; margin-bottom: 5px; margin-top: 10px">
          {{ "题目" + (index + 1) + ": " + d.title }}
          <span style="margin-left: 300px">
            评分：<a-input-number id="inputNumber" v-model="d.score" />
          </span>
        </div>
        <a-form-item>
          <a-radio-group name="radioGroup" :value="d.answerTrue" disabled>
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
          <span style="margin-left: 300px">
            评分：<a-input-number id="inputNumber" v-model="d.score" />
          </span>
        </div>
        <div style="text-align: left; margin-bottom: 20px; margin-top: 5px">
          答案：{{ d.answer }}
        </div>
      </div>
    </a-form>
    <div>总分： {{ scoreTotal }}</div>
    <a-button type="primary" @click="submitPaper">提交试卷</a-button>
  </div>
</template>

<script>
import paperSelect from "../../components/testPaper/paper-select.vue";
import PaperSelectShow from "../../components/testPaper/paper-select-show.vue";

import { doGetScorePaperOne, doScorePaper } from "@/api/paper";

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
      stuPaperId: null,
      paperId: null,
    };
  },
  computed: {
    scoreTotal: function () {
      let total = 0;
      this.choiceQustion.forEach((element) => {
        if (element.score) {
          total += Number(element.score);
        }
      });

      this.askQustion.forEach((element) => {
        if (element.score) {
          total += Number(element.score);
        }
      });
      return total;
    },
  },
  mounted() {
    this.stuPaperId = this.$route.query.stuPaperId;
    this.paperId = this.$route.query.paperId;
    this.getOnePaper(this.stuPaperId);
  },
  methods: {
    async getOnePaper(stuPaperId) {
      const response = await doGetScorePaperOne({ stuPaperId });
      console.log(response);
      if (response.data.status === 200) {
        this.choiceQustion = JSON.parse(response.data.data[0].selectContent);
        this.askQustion = JSON.parse(response.data.data[0].askContent);
      } else {
        this.$message.error(response.data.data);
      }
    },

    async submitPaper() {
      const request = {};
      request.paperId = this.paperId;
      request.selectContent = JSON.stringify(this.choiceQustion);
      request.askContent = JSON.stringify(this.askQustion);
      request.stuPaperId = this.stuPaperId;
      request.score = this.scoreTotal;
      console.log(request);
      const response = await doScorePaper(request);
      console.log(response);
      if (response.data.status === 200) {
        this.$message.info(`score successfully!`);
                this.$router.push(`/classPaper?paperId=${this.paperId}`);
        // this.getClassList();
      } else {
        this.$message.error(response.data.data);

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
</style>


