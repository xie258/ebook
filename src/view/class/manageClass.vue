<template>
  <div>
    <h1>班级列表</h1>
    <a-button @click="noticeClass" type="primary">发布通知</a-button>
    <a-table :columns="columns" :data-source="data">
      <span slot="action" slot-scope="text, record">
        <a @click="joinClass(record, 0)"> quit</a>
      </span>
    </a-table>
    <a-modal
      title="发布通知"
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
        <a-form-item label="通知主题">
          <a-input
            v-decorator="[
              'title',
              {
                rules: [
                  { required: true, message: 'Please input your className!' },
                ],
              },
            ]"
          />
        </a-form-item>
        <a-form-item label="通知内容">
          <a-input
            v-decorator="[
              'content',
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
  </div>
</template>
<script>
import { doUpdateClass, doGetOneClass, addClassNotification } from "@/api/class";

const columns = [
  {
    title: "学生姓名",
    dataIndex: "studentName",
    key: "studentName",
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
      className: '',
      visible: false,
      confirmLoading: false,
      formLayout: "horizontal",
      form: this.$form.createForm(this, { name: "class" }),
    };
  },
  mounted() {
      this.className = this.$route.query.className;
    this.getClassList();
  },
  methods: {
    async getClassList() {
      let username = this.$store.getters.getUsername;
      if (username === "") {
        username = localStorage.getItem("username");
      }
      const response = await doGetOneClass(this.className);
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
      request.className = this.className;
      request.studentName = record.studentName;
      request.status = status;
      const response = await doUpdateClass(request);
      console.log(response);
      if (response.data.status === 200) {
        this.$message.info(`quit ${request.studentName} successfully!`);
        this.getClassList();
      } else {
        this.$message.error(response.data.data);
      }
    },
    noticeClass() {
        this.visible = true;
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
            title: values.title,
            content: values.content,
            className: this.className,
          };
          console.log(request);
          addClassNotification(request).then(() => {
            this.visible = false;
            this.confirmLoading = false;
          });
        }
            this.visible = false;
            this.confirmLoading = false;

      });
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
  },
};
</script>