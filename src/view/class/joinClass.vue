<template>
  <div>
    <h1>班级列表</h1>
    <a-table :columns="columns" :data-source="data">
      <span slot="action" slot-scope="text, record">
        <a v-if="record.status !== 1" @click="joinClass(record, 1)"> join</a>
        <a v-if="record.status === 1" @click="joinClass(record, 0)"> quit</a>
      </span>
    </a-table>
  </div>
</template>
<script>
import { doUpdateClass, doGetClass, doGetJoinClass } from "@/api/class";

const columns = [
  {
    title: "班级",
    dataIndex: "className",
    key: "className",
  },
  {
    title: "简介",
    dataIndex: "description",
    key: "description",
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
    this.getClassList();
  },
  methods: {
    async getClassList() {
      let username = this.$store.getters.getUsername;
      if (username === "") {
        username = localStorage.getItem("username");
      }
      const response = await doGetJoinClass(username);
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