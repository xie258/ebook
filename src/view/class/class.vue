<template>
  <div>
    <p>
    <span style="margin-right:300px">班级管理</span>
    <a-button type="primary" @click="opencreateClass"> 创建班级 </a-button>
    </p>

    <a-modal
      title="创建班级"
      :visible="visible"
      :confirm-loading="confirmLoading"
      @ok="handleOk"
      @cancel="handleCancel"
    >
      <a-form
        :form="form"
        :label-col="{ span: 5 }"
        :wrapper-col="{ span: 12 }"
        @submit="handleSubmit"
      >
        <a-form-item label="班级名称">
          <a-input
            v-decorator="[
              'className',
              {
                rules: [
                  { required: true, message: 'Please input your className!' },
                ],
              },
            ]"
          />
        </a-form-item>
        <a-form-item label="班级简介">
          <a-input
            v-decorator="[
              'description',
              {
                rules: [
                  { required: true, message: 'Please input your description!' },
                ],
              },
            ]"
          />
        </a-form-item>
      </a-form>
    </a-modal>
    <a-table :columns="columns" :data-source="data">
      <span slot="action" slot-scope="text, record">
        <a @click="manageClass(record)">enter Class</a>
        <a-divider type="vertical" />
        <a @click="deleteClass(record)">Delete</a>
        <a-divider type="vertical" />
      </span>
    </a-table>
  </div>
</template>
<script>
import { doCreateClass, doGetClass, doDeleteClass } from "@/api/class";

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
      visible: false,
      confirmLoading: false,
      formLayout: "horizontal",
      form: this.$form.createForm(this, { name: "class" }),
    };
  },
  mounted() {
    this.getClassList();
  },
  methods: {
    opencreateClass() {
      this.visible = true;
    },
    showModal() {
      this.visible = true;
    },
    async getClassList() {
      let username = this.$store.getters.getUsername;
      if (username === "") {
        username = localStorage.getItem("username");
      }
      const response = await doGetClass(username);
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
    handleOk(e) {
      e.preventDefault();
      this.form.validateFields((err, values) => {
        if (!err) {
          console.log("Received values of form: ", values);
          this.confirmLoading = true;
          let teacherName = this.$store.getters.getUsername;
          if (teacherName === "") {
            teacherName = localStorage.getItem("username");
          }
          const request = {
            className: values.className,
            description: values.description,
            teacherName,
          };
          console.log(request);
          this.createClass(request).then(() => {
            this.visible = false;
            this.confirmLoading = false;
          });
        }
      });
    },
    async createClass(request) {
      const response = await doCreateClass(request);
      console.log(response);
      if (response.data.status === 200) {
        this.$message.info(`create ${request.className} successfully!`);
        this.getClassList();
      } else {
        this.$message.error(response.data.data);
      }
    },
    handleCancel(e) {
      console.log("Clicked cancel button");
      this.visible = false;
    },
    handleSubmit(e) {
      e.preventDefault();
      this.form.validateFields((err, values) => {
        if (!err) {
          console.log("Received values of form: ", values);
        }
      });
    },
    async deleteClass(record) {
      const response = await doDeleteClass(record.className);
      console.log(response);
      if (response.data.status === 200) {
        this.$message.info(`delete ${record.className} successfully!`);
        this.getClassList();
      } else {
        this.$message.error(response.data.data);
      }
    },
    manageClass(record) {
      this.$router.push(`manageClass?className=${record.className}`)
    },
  },
};
</script>