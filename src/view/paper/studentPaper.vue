<template>
  <div>
    <h1>学生试卷列表</h1>
    <a-table :columns="columns" :data-source="data">
      <span slot="action" slot-scope="text, record">
        <a v-if="record.status === '0' " @click="doPaper(record)"> do</a>
        <a v-else @click="checkPaper(record)"> check</a>
      </span>
    </a-table>
  </div>
</template>
<script>
import { doGetPaperByCreator, doGetStudentPaper } from "@/api/paper";

const columns = [
  {
    title: "试卷名称",
    dataIndex: "paperName",
    key: "paperName",
  },
    {
    title: "试卷简介",
    dataIndex: "paperDescription",
    key: "paperDescription",
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
    this.getPaperList();
  },
  methods: {
    async getPaperList() {
      const studentName = localStorage.getItem("username")
      const response = await doGetStudentPaper({studentName});
      console.log(response);
      if (response.data.status === 200) {
        this.data = response.data.data.map((element, index) => {
          element.key = index;
          return element;
        });
        console.log("studentPaperList",this.data)
      } else {
        this.$message.error(response.data.data);
      }
    },
    doPaper(record) {
      console.log(record.paperId)
      this.$router.push(`/studentDoPaper?stuPaperId=${record.stuPaperId}&paperId=${record.paperId}`)
    },
    checkPaper(record) {
      this.$router.push(`/checkScorePaper?stuPaperId=${record.stuPaperId}&paperId=${record.paperId}`)
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