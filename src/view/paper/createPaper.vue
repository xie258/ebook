<template>
  <div>
    <a-button @click="addChoiceQuestion" ref="sdf">添加选择题</a-button>
    <a-button @click="addaskQuestion" ref="sdf">添加简答题</a-button>
    <a-button @click="savePaper" type='primary'>保存试卷</a-button>

    <a-form-item label="试卷名称">
      <a-input v-model="paperName" placeholder="please input name"></a-input>
    </a-form-item>
    <a-form-item label="试卷描述">
      <a-input v-model="paperDescription" placeholder="please input description"></a-input>
    </a-form-item>
    <paper-select-show :data="selectData"></paper-select-show>

    <div style="text-align: left">一、选择题</div>
    <a-form :label-col="{ span: 5 }" :wrapper-col="{ span: 12 }">
      <div v-for="(d, index) in choiceQustion" :key="`${index}${d.title}`">
        <a-form-item :label="'题目' + (index + 1)">
          <p style="text-align: left">{{ d.title }}</p>
        </a-form-item>
        <a-form-item>
          <a-radio-group name="radioGroup" disabled :default-value="1">
            <a-radio :value="1">
              {{ d.answerA }}
            </a-radio>
            <a-radio :value="2" >
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

    <!-- <div class="choice question">
      <div v-for="(d, index) in choiceQustion" :key="index">
        <div>title: {{ d.title }}</div>
        <div>
          <span style="margin-right: 10px"> A: {{ d.answerA }} </span>
          <span style="margin-right: 10px"> B: {{ d.answerB }} </span>
          <span style="margin-right: 10px"> C: {{ d.answerC }} </span>
          <span style="margin-right: 10px"> D: {{ d.answerD }} </span>
        </div>
      </div>
    </div> -->
    <a-modal
      title="add choice question"
      :visible="choiceQustionVisible"
      @ok="handleAddChoice"
      @cancel="handleCancelAddChoice"
    >
      <paper-select ref="getSelectData"></paper-select>
    </a-modal>

    <a-modal
      title="简答题"
      :visible="askQustionVisible"
      @ok="handleAddask"
      @cancel="handleCancelAddask"
    >
      <a-textarea
        v-model="askquestionContent"
        class="title"
        autoSize
        placeholder="please input your question"
      />
    </a-modal>
  </div>
</template>

<script>
import paperSelect from "../../components/testPaper/paper-select.vue";
import PaperSelectShow from "../../components/testPaper/paper-select-show.vue";

import { doCreatePaper } from '@/api/paper'

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
      paperName: "",
      paperDescription: "",
    };
  },
  methods: {
    async savePaper() {
      console.log("choice",this.choiceQustion)
      console.log(this.askQustion)
      const request = {};
      request.paperName = this.paperName;
      request.paperDescription = this.paperDescription;
      request.selectContent = JSON.stringify(this.choiceQustion);
      request.askContent =  JSON.stringify(this.askQustion);
      //       request.selectContent = this.choiceQustion;
      // request.askContent =  this.askQustion;
      request.creator = localStorage.getItem("username");
      console.log(request)
      const response = await doCreatePaper(request);
      console.log(response);
      if (response.data.status === 200) {
        this.$message.info(`create ${request.paperName} successfully!`);
        // this.getClassList();
      } else {
        this.$message.error(response.data.data);
      }

    },
    addChoiceQuestion() {
      // this.choiceQustion.push({});
      this.choiceQustionVisible = true;
      console.log(this.$refs.getSelectData);
      // this.choiceQustion.push(this.$refs.getSelectData.select)
    },
    handleAddChoice() {
      this.choiceQustionVisible = false;
      // console.log(this.$refs)
      console.log(this.$refs.getSelectData.select);
      let temp = JSON.parse(JSON.stringify(this.$refs.getSelectData.select));
      this.choiceQustion.push(temp);
      this.$refs.getSelectData.resetSelectData();
      this.selectData = this.$refs.getSelectData.select.title;
    },
    handleCancelAddChoice() {
      this.choiceQustionVisible = false;
    },

    addaskQuestion() {
      this.askQustionVisible = true;
    },
    handleAddask() {
      let temp = JSON.parse(JSON.stringify(this.askquestionContent));
      this.askQustion.push({ title: temp });
      this.askQustionVisible = false;
    },
    handleCancelAddask() {
      this.askQustionVisible = false;
    },
  },
};
</script>

<style>
</style>