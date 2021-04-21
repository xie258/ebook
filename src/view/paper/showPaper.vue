<template>
  <div>
    <div class="title">
      {{ paperName }}
    </div>
    <div class="description">
      {{ paperName }}
    </div>
    <paper-select-show :data="selectData"></paper-select-show>

    <div style="text-align: left">一、选择题</div>
    <a-form :label-col="{ span: 5 }" :wrapper-col="{ span: 12 }">
      <div v-for="(d, index) in choiceQustion" :key="`${index}${d.title}`">
        <a-form-item :label="'题目' + (index + 1)">
          <p style="text-align: left">{{ d.title }}</p>
        </a-form-item>
        <a-form-item>
          <a-radio-group name="radioGroup">
            <a-radio value="A">
              {{ d.answerA }}
            </a-radio>
            <a-radio value="B">
              {{ d.answerB }}
            </a-radio>
            <a-radio value="C">
              {{ d.answerC }}
            </a-radio>
            <a-radio value="D">
              {{ d.answerD }}
            </a-radio>
          </a-radio-group>
        </a-form-item>
      </div>

      <div style="text-align: left">二、问答题</div>
      <div v-for="(d, index) in askQustion" :key="index">
        <a-form-item :label="'题目' + (index + 1)">
          <p style="text-align: left">{{ d.title }}</p>
        </a-form-item>
        <a-form-item label="答案">
          <a-textarea
            v-model="d.answer"
            class="title"
            autoSize
            placeholder="please input your question"
          />
        </a-form-item>
      </div>
    </a-form>
    <a-button type="primary" @click="submitPaper">提交试卷</a-button>
  </div>
</template>

<script>
import paperSelect from "../../components/testPaper/paper-select.vue";
import PaperSelectShow from "../../components/testPaper/paper-select-show.vue";

import { doGetPaperById,  doSubmitPaper} from "@/api/paper";

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
    };
  },
  mounted() {
    this.paperId = this.$route.query.paperId;
    this.getOnePaper(this.paperId);
  },
  methods: {
    async getOnePaper(paperId) {
      const response = await doGetPaperById(paperId);
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
      request.studentName = localStorage.getItem('username');
      request.paperId = this.paperId;
      request.selectContent = JSON.stringify(this.choiceQustion);
      request.askContent =  JSON.stringify(this.askQustion);
      console.log(request)
      const response = await doSubmitPaper(request);
      console.log(response);
      if (response.data.status === 200) {
        this.$message.info(`submit successfully!`);
        // this.getClassList();
      } else {
        this.$message.error(response.data.data);
      }

    },
  },
};
</script>

<style>
</style>