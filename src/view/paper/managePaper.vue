<template>
  <div>
    <p style="margin-bottom: 30px">
      <span style="margin-right: 300px">试卷列表</span>
      <router-link to="/createPaper">创建试卷</router-link>
    </p>
    <a-modal
      title="Title"
      :visible="visible"
      :confirm-loading="confirmLoading"
      @ok="handleOk"
      @cancel="handleCancel"
    >
      <a-select
        default-value="lucy"
        style="width: 120px"
        v-model="publishClassName"
      >
          <a-select-option v-for="(name, index) in classList" :key="index" :value="name.className"> {{ name.className }} </a-select-option>
      </a-select>
    </a-modal>
    <a-table :columns="columns" :data-source="data">
      <span slot="action" slot-scope="text, record">
        <a @click="openPaper(record)"> enter</a>
        <a-divider type="vertical" />
        <a @click="toClassPaper(record)"> score class paper</a>
        <a-divider type="vertical" />
        <a @click="toPublishPaper(record)"> publish class paper</a>
      </span>
    </a-table>
  </div>
</template>
<script>
import { doGetPaperByCreator, doPublishPaper} from "@/api/paper";
import {  doGetClass } from "@/api/class";
const columns = [
  {
    title: "试卷名称",
    dataIndex: "paperName",
    key: "paperName",
  },
  {
    title: "简介",
    dataIndex: "paperDescription",
    key: "paperDescription",
  },
  {
    title: "创建时间",
    dataIndex: "createTime",
    key: "createTime",
  },
  {
    title: "Action",
    key: "action",
    scopedSlots: { customRender: "action" },
  },
];

export default {
  data() {
    return {
      data: [],
      columns,
      visible: false,
      confirmLoading: false,
      classList: [],
      publishClassName: null,
      publishInfo: null,
    };
  },
  mounted() {
    this.getPaperList();
    this.getClassList();
  },
  methods: {
    async getClassList() {
      let username = this.$store.getters.getUsername;
      if (username === "") {
        username = localStorage.getItem("username");
      }
      const response = await doGetClass(username);
      console.log(response);
      if (response.data.status === 200) {
        this.classList = response.data.data.map((element, index) => {
          element.key = index;
          return element;
        });
        console.log(this.classList)
      } else {
        this.$message.error(response.data.data);
      }
    },
    async handleOk(e) {
      console.log(this.publishClassName)
      this.confirmLoading = true;
      const request = {};
      request.className = this.publishClassName;
      request.askContent = this.publishInfo.askContent;
      request.selectContent = this.publishInfo.selectContent;
      request.paperId = this.publishInfo.paperId;
      const response = await doPublishPaper(request);
      console.log(response);
      if (response.data.status === 200) {
        this.$message.info(`publish ${this.publishClassName} paper successfully!`);
        this.visible = false;
        this.confirmLoading = false;
      } else {
        this.$message.error(response.data.data);
        this.confirmLoading = false;
      }
    },
    handleCancel(e) {
      console.log("Clicked cancel button");
      this.visible = false;
    },
    async getPaperList() {
      let username = this.$store.getters.getUsername;
      if (username === "") {
        username = localStorage.getItem("username");
      }
      const response = await doGetPaperByCreator(username);
      console.log(response);
      if (response.data.status === 200) {
        this.data = response.data.data.map((element, index) => {
          element.key = index;
          return element;
        });
      } else {
        this.$message.error(response.data.data);
      }
    },
    openPaper(record) {
      console.log(record.paperId);
      this.$router.push(`/showPaper?paperId=${record.paperId}`);
    },
    toClassPaper(record) {
      this.$router.push(`/classPaper?paperId=${record.paperId}`);
    },
    async toPublishPaper(record) {
      if (this.classList.length < 1) {
        this.getClassList();
      }
      this.visible = true;
      this.publishInfo = record;
    },
    async joinClass(record, status) {
      const request = {};
      request.className = record.className;
      request.studentName = localStorage.getItem("username");
      request.status = status;
      const response = await doUpdateClass(request);
      console.log(response);
      if (response.data.status === 200) {
        this.$message.info(`join ${record.className} successfully!`);
        this.getClassList();
      } else {
        this.$message.error(response.data.data);
      }
    },
  },
};
</script>