<template>
  <div>
    <h1>试卷列表</h1>
    <a-table :columns="columns" :data-source="data">
      <span slot="action" slot-scope="text, record">
        <a v-if="record.status !== 1" @click="joinClass(record, 1)"> join</a>
        <a v-if="record.status === 1" @click="joinClass(record, 0)"> quit</a>
      </span>
    </a-table>
  </div>
</template>
<script>
import { doGetPaperByCreator } from "@/api/paper";

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
    };
  },
  mounted() {
    this.getPaperList();
  },
  methods: {
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