<template>
  <div>
    <a-input-search
      style="width: 500px"
      size="large"
      placeholder="input search text"
      enter-button
      @search="onSearch"
    />
    <a-table
      :columns="columns"
      :row-key="(record) => record.key"
      :data-source="data"
      :pagination="pagination"
      :loading="loading"
      @change="handleTableChange"
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

import { doGetbookList } from "@/api/ebook";

export default {
  data() {
    return {
      data: [],
      pagination: {},
      loading: false,
      columns,
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
        console.log(record.ebookId)
        localStorage.setItem("contentHtml",record.contentHtml)
        this.$router.push(`/showEbook?ebookId=${record.ebookId}`)
    },
    onSearch() {},
    handleTableChange(pagination, filters, sorter) {
      console.log(pagination);
      const pager = { ...this.pagination };
      pager.current = pagination.current;
      this.pagination = pager;
      this.fetch({
        results: pagination.pageSize,
        page: pagination.current,
        sortField: sorter.field,
        sortOrder: sorter.order,
        ...filters,
      });
    },
    fetch(params = {}) {
      //   console.log('params:', params);
      // //   this.loading = true;
      //   reqwest({
      //     url: 'https://randomuser.me/api',
      //     method: 'get',
      //     data: {
      //       results: 10,
      //       ...params,
      //     },
      //     type: 'json',
      //   }).then(data => {
      //     const pagination = { ...this.pagination };
      //     // Read total count from server
      //     // pagination.total = data.totalCount;
      //     pagination.total = 200;
      //     this.loading = false;
      //     this.data = data.results;
      //     this.pagination = pagination;
      //   });

      this.data = [
        {
          name: "sfasdf",
          login: {
            uuid: "1111111111111111",
          },
          gender: "male",
          email: "2222@qq.com",
        },
      ];
    },
  },
};
</script>

<style>
</style>