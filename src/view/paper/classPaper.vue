<template>
  <div>
    <h1>学生试卷列表</h1>
    <a-table :columns="columns" :data-source="data">
      <span slot="action" slot-scope="text, record">
        <a v-if="!record.score" @click="scorePaper(record)"> score</a>
        <a v-else @click="checkPaper(record)"> check</a>
      </span>
    </a-table>
  </div>
</template>
<script>
import { doGetPaperByCreator, doGetScorePaper } from "@/api/paper";

const columns = [
  {
    title: "学生姓名",
    dataIndex: "studentName",
    key: "studentName",
  },
    {
    title: "创建时间",
    dataIndex: "createTime",
    key: "createTime",
  },
    {
    title: "分数",
    dataIndex: "score",
    key: "score",
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
      paperId: -1,
    };
  },
  mounted() {
    this.paperId = this.$route.query.paperId;
    this.getPaperList();
  },
  methods: {
    async getPaperList() {
        const paperId = this.paperId;
      const response = await doGetScorePaper({paperId});
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
    scorePaper(record) {
      console.log(record.paperId)
      this.$router.push(`/scorePaper?stuPaperId=${record.stuPaperId}&paperId=${this.paperId}`)
    },
    checkPaper(record) {
      this.$router.push(`/checkPaper?stuPaperId=${record.stuPaperId}&paperId=${this.paperId}`)
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