<template>
  <div id="components-layout-demo-basic">
    <a-layout>
      <a-layout-content>
        <a-button @click="addChoiceQuestion" ref="sdf">添加选择题</a-button>
        <a-button @click="addaskQuestion" ref="sdf">添加简答题</a-button>
        <a-button @click="savePaper" type="primary">保存试卷</a-button>

        <div style="margin: 5px; text-align: left">
          <span>
            试卷名称：
            <a-input
              v-model="paperName"
              placeholder="please input name"
              style="width: 300px"
            ></a-input>
          </span>
        </div>

        <div style="margin: 5px; text-align: left">
          <span>
            试卷描述：
            <a-input
              v-model="paperDescription"
              placeholder="please input description"
              style="width: 300px"
            ></a-input>
          </span>
        </div>
        <!-- <paper-select-show :data="selectData"></paper-select-show> -->

        <div style="text-align: left; margin-bottom: 5px; margin-top: 10px">
          一、选择题
        </div>
        <a-form :label-col="{ span: 1 }" :wrapper-col="{ span: 5 }">
          <div v-for="(d, index) in choiceQustion" :key="`${index}${d.title}`">
            <div style="text-align: left; margin-bottom: 5px; margin-top: 10px">
              {{ "题目" + (index + 1) + ": " + d.title }}
            </div>
            <a-form-item>
              <a-radio-group name="radioGroup" disabled :default-value="1">
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
            </div>
            <div style="text-align: left">
              答案：
              <a-textarea
                v-model="d.answer"
                class="title"
                allowClear
                placeholder="please input your question"
                style="width: 500px"
              />
            </div>
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
      </a-layout-content>
      <a-layout-sider width="40%">
        <div>题库</div>
        <a-table :columns="columns" :data-source="data">
          <span slot="action" slot-scope="text, record">
            <a @click="addFromBank(record)"> add</a>
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
      </a-layout-sider>
    </a-layout>
  </div>
</template>

<script>
import paperSelect from "../../components/testPaper/paper-select.vue";
import PaperSelectShow from "../../components/testPaper/paper-select-show.vue";
import { doGetQuestionAll } from "@/api/question";
import { doCreatePaper } from "@/api/paper";

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
    title: "Action",
    key: "action",
    scopedSlots: { customRender: "action" }
  }
];

export default {
  components: {
    paperSelect,
    PaperSelectShow
  },
  mounted() {
    this.getQuestionAll();
  },
  data() {
    return {
      choiceQustion: [],
      askQustion: [],
      choiceQustionVisible: false,
      // selectData: "",
      askQustionVisible: false,
      askquestionContent: "",
      paperName: "",
      paperDescription: "",
      columns,
      data: []
    };
  },
  methods: {
    async savePaper() {
      console.log("choice", this.choiceQustion);
      console.log(this.askQustion);
      const request = {};
      request.paperName = this.paperName;
      request.paperDescription = this.paperDescription;
      request.selectContent = JSON.stringify(this.choiceQustion);
      request.askContent = JSON.stringify(this.askQustion);
      //       request.selectContent = this.choiceQustion;
      // request.askContent =  this.askQustion;
      request.creator = localStorage.getItem("username");
      console.log(request);
      const response = await doCreatePaper(request);
      console.log(response);
      if (response.data.status === 200) {
        this.$message.info(`create ${request.paperName} successfully!`);
        this.$router.push("/managePaper");
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
      // this.selectData = this.$refs.getSelectData.select.title;
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
    addFromBank(record) {
      console.log(record);
      if (record.questionType === "1") {
        const addContent = eval("(" + record.questionContent + ")");
        this.choiceQustion.push(addContent);
      } else if (record.questionType === "2") {
        this.askQustion.push({ title: record.questionContent });
      } else {
        this.$message.error("添加失败");
      }
    },
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
    }
  }
};
</script>

<style scoped>
#components-layout-demo-basic .ant-layout-header,
#components-layout-demo-basic .ant-layout-footer {
  background: #7dbcea;
  color: #fff;
  width: 600;
}

#components-layout-demo-basic .ant-layout-sider {
  background: #bdd2e0;
  color: #fff;
  line-height: 120px;
}
</style>
