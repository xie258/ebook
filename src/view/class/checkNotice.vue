<template>
  <div>
    <h1>通知列表</h1>
    <a-table :columns="columns" :data-source="data">
      <span slot="action" slot-scope="text, record">
        <a @click="checkBox(record)"> check</a>
      </span>
    </a-table>
        <a-modal v-model="visible" :title="noticeTitle" @ok="handleOk">
      <p>{{noticeContent}}</p>
    </a-modal>
  </div>
</template>
<script>
import { doUpdateClass, doGetClass, doGetOneNotice } from "@/api/class";

const columns = [
  {
    title: "时间",
    dataIndex: "noticeTime",
    key: "noticeTime",
  },
  {
    title: "主题",
    dataIndex: "title",
    key: "title",
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
      noticeContent: '',
      visible: false,
      noticeTitle: '',
    };
  },
  mounted() {
    this.getNoticeList();
  },
  methods: {
      handleOk() {
          this.visible = false;
      },
      checkBox(record) {
          this.visible = true;
          this.noticeContent = record.content;
          this.noticeTitle = record.title;
      },
    async getNoticeList() {
      let username = this.$store.getters.getUsername;
      if (username === "") {
        username = localStorage.getItem("username");
      }
      const className = this.$route.query.className;
      const response = await doGetOneNotice(className);
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