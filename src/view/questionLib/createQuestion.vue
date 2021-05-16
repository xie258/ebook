<template>
  <div>
    <p style="margin-bottom: 30px">
      <span style="margin-right: 300px">题目列表</span>
      <a-button @click="addChoiceQuestion" type="primary" ref="sdf"
        >添加选择题</a-button
      >
      <a-button @click="addaskQuestion" type="primary" ref="sdf"
        >添加简答题</a-button
      >
    </p>
    <a-table :columns="columns" :data-source="data">
      <span slot="action" slot-scope="text, record">
        <a @click="checkQuestion(record)"> enter</a>
        <a-divider type="vertical" />
        <a @click="deleteQuestion(record)">delete</a>
      </span>
      <span slot="questionType" slot-scope="questionType">
        <a-tag
          :key="questionType"
          :color="questionType === '1' ? 'geekblue' : 'green'"
        >
          {{ questionType === "1" ? "选择题" : "问答题" }}
        </a-tag>
      </span>
    </a-table>
    <a-modal
      title="add choice question"
      :visible="choiceQustionVisible"
      @ok="handleAddChoice"
      @cancel="handleCancelAddChoice"
    >
      <!-- <a-input v-model="questionName" addon-before="题目名称"  /> -->
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

    <a-modal
      title="题目详情"
      :visible="questionVisible"
      @ok="handleOK"
      @cancel="handleOK"
    >
      <div v-if="showType === '1'">
        <div>题目： {{ showContent.title }}</div>
        <a-radio-group name="radioGroup" disabled>
          <a-radio :value="1">
            {{ showContent.answerA }}
          </a-radio>
          <a-radio :value="2">
            {{ showContent.answerB }}
          </a-radio>
          <a-radio :value="3">
            {{ showContent.answerC }}
          </a-radio>
          <a-radio :value="4">
            {{ showContent.answerD }}
          </a-radio>
        </a-radio-group>
      </div>
      <div v-else-if="showType === '2'">题目： {{ showContent }}</div>
    </a-modal>
  </div>
</template>

<script>
import { doGetQuestionAll, doAddQuestion, doDeleteQuestion } from "@/api/question";
import paperSelect from "../../components/testPaper/paper-select.vue";
const columns = [
  {
    title: "题目名称",
    dataIndex: "questionName",
    key: "questionName"
  },
  {
    title: "作者",
    dataIndex: "creator",
    key: "creator"
  },
  {
    title: "题目类型",
    key: "questionType",
    dataIndex: "questionType",
    scopedSlots: { customRender: "questionType" }
  },
  {
    title: "创建时间",
    dataIndex: "createTime",
    key: "createTime"
  },
  {
    title: "Action",
    key: "action",
    scopedSlots: { customRender: "action" }
  }
];

export default {
  data() {
    return {
      data: [],
      columns,
      visible: false,
      confirmLoading: false,
      choiceQustion: [],
      askQustion: [],
      choiceQustionVisible: false,
      selectData: "",
      askQustionVisible: false,
      askquestionContent: "",
      questionName: "",
      questionVisible: false,
      showContent: {},
      showType: ""
    };
  },
  components: {
    paperSelect
  },
  mounted() {
    this.getQuestionAll();
  },
  methods: {
    async getQuestionAll() {
      const response = await doGetQuestionAll();
      console.log(response);
      if (response.data.status === 200) {
        this.data = response.data.data.map((element, index) => {
          element.key = index;
          return element;
        });
        console.log("question All", this.data);
      } else {
        this.$message.error(response.data.data);
      }
    },
    addChoiceQuestion() {
      this.choiceQustionVisible = true;
      console.log(this.$refs.getSelectData);
    },
    async addQuestion(content, type) {
      // type 1 choice ; type 2 ask
      const request = {};
      request.questionName = this.questionName;
      request.questionContent = content;
      request.questionType = type;
      request.creator = localStorage.getItem("username");
      console.log(request);
      const response = await doAddQuestion(request);
      console.log(response);
      if (response.data.status === 200) {
        this.$message.info(`create ${request.questionName} successfully!`);
        this.getQuestionAll();
      } else {
        this.$message.error(response.data.data);
      }
    },
    handleAddChoice() {
      const contentRaw = this.$refs.getSelectData.select;
      this.questionName = contentRaw.title;
      const content = JSON.parse(JSON.stringify(contentRaw));
      this.choiceQustionVisible = false;
      this.addQuestion(content, "1"); // type "1" for choice
      //   this.choiceQustion.push(temp);
      //   this.$refs.getSelectData.resetSelectData();
      //   this.selectData = this.$refs.getSelectData.select.title;
    },
    handleCancelAddChoice() {
      this.choiceQustionVisible = false;
    },
    addaskQuestion() {
      this.askQustionVisible = true;
    },
    handleAddask() {
      const contentRaw = this.askquestionContent;
      this.questionName = contentRaw;
      const content = JSON.parse(JSON.stringify(contentRaw));
      this.askQustionVisible = false;
      this.addQuestion(content, "2"); // type "2" for ask
      //   this.askQustion.push({ title: temp });
    },
    handleCancelAddask() {
      this.askQustionVisible = false;
    },
    checkQuestion(record) {
      this.showType = record.questionType;
      if (this.showType === "1") {
        this.showContent = eval("(" + record.questionContent + ")");
      } else if (this.showType === "2") {
        this.showContent = record.questionContent;
      }
      this.questionVisible = true;
    },
    handleOK() {
      this.questionVisible = false;
      this.showContent = {};
    },
    async deleteQuestion(record) {
      const request = {};
      request.questionId = record.questionId;
      console.log(request);
      const response = await doDeleteQuestion(request);
      console.log(response);
      if (response.data.status === 200) {
        this.$message.info(`delete ${record.questionName} successfully!`);
        this.getQuestionAll();
      } else {
        this.$message.error(response.data.data);
      }
    },
  }
};
</script>
