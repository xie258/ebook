<template>
  <div>
    <a-input-search
      style="width: 500px;margin-bottom: 30px"
      size="large"
      placeholder="input search text"
      enter-button
      @search="onSearch"
      v-model="searchKey"
    />
    <a-table
      :columns="columns"
      :row-key="(record) => record.key"
      :data-source="data"
    >
      <template slot="name" slot-scope="name">
        {{ name.first }} {{ name.last }}
      </template>
      <span slot="action" slot-scope="text, record">
        <a @click="showEbook(record)">enter</a>
        <a-divider type="vertical" />
      </span>
    </a-table>
  </div>
</template>

<script>
const columns = [
  {
    title: "Title",
    dataIndex: "title",
    sorter: true,
    width: "30%",
  },
  {
    title: "Author",
    dataIndex: "author",
    // filters: [
    //   { text: "Male", value: "male" },
    //   { text: "Female", value: "female" },
    // ],
    width: "10%",
  },
  {
    title: "Action",
    key: "action",
    scopedSlots: { customRender: "action" },
  },
  {
    title: "Create Time",
    dataIndex: "createTime",
  },
];

import { doGetbookList, doSearchBookList } from "@/api/ebook";

export default {
  data() {
    return {
      data: [],
      pagination: {},
      loading: false,
      columns,
      searchKey: null,
    };
  },
  mounted() {
    // this.fetch();
    this.getBookList();
  },
  methods: {
    async getBookList() {
      const response = await doGetbookList();
      console.log(response);
      if (response.data.status === 200) {
        this.$message.info(`get topic list successfully!`);
        this.data = response.data.data.map((element, index) => {
          element.key = index;
          return element;
        });
      } else {
        this.$message.error(response.data.data);
      }
    },
    showEbook(record) {
      console.log(record.ebookId);
      localStorage.setItem("contentHtml", record.contentHtml);
      this.$router.push(`/showEbook?ebookId=${record.ebookId}`);
    },
    async onSearch() {
      const searchKey = this.searchKey;
      if (searchKey && searchKey !== "") {
        const response = await doSearchBookList({searchKey});
        console.log(response);
        if (response.data.status === 200) {
          this.$message.info(`get topic list successfully!`);
          this.data = response.data.data.map((element, index) => {
            element.key = index;
            return element;
          });
        } else {
          this.$message.error(response.data.data);
        }
      } else {
        this.getBookList();
      }
    },
  },
};
</script>

<style>
</style>