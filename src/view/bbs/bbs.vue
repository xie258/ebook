<template>
  <div>
    <h2>论坛</h2>
    <a-input-search
      placeholder="input your topic"
      size="large"
      v-model="topicName"
      @search="createTopic"
    >
      <a-button slot="enterButton" type="primary">创建话题</a-button>
    </a-input-search>

    <a-list
      class="demo-loadmore-list"
      :loading="loading"
      item-layout="horizontal"
      :data-source="data"
    >
      <div
        v-if="showLoadingMore"
        slot="loadMore"
        :style="{
          textAlign: 'center',
          marginTop: '12px',
          height: '32px',
          lineHeight: '32px',
        }"
      >
        <a-spin v-if="loadingMore" />
      </div>
      <a-list-item slot="renderItem" slot-scope="item, index">
        <a slot="actions" @click="gotoBbs(item.idbbs)">enter</a>
        <a-list-item-meta
          :description="item.author"
        >
          <a slot="title" >话题： {{ item.topicName }}</a>
          <a-avatar
            slot="avatar"
            src="https://zos.alipayobjects.com/rmsportal/ODTLcjxAfvqbxHnVXCYX.png"
          />
        </a-list-item-meta>
      </a-list-item>
    </a-list>
  </div>
</template>
<script>
import { doCreateBbs, doGetTopicAll } from "@/api/bbs";

export default {
  data() {
    return {
      loading: false,
      loadingMore: false,
      showLoadingMore: true,
      topicName: "",
      data: [
        {
          topicName: "Ant Design Title 1",
          content: "ssdf;",
        },
        {
          title: "Ant Design Title 2",
          content: "ssdf;",
        },
      ],
    };
  },
  mounted() {
    this.getTopicAll();
  },
  methods: {
    async getTopicAll() {
      const response = await doGetTopicAll();
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
    gotoBbs(bbsId) {
      console.log(bbsId)
      this.$router.push(`/showBbs?bbsId=${bbsId}`);
      // console.log(bbsId)
    },
    async createTopic() {
      const request = {};
      request.topicName = this.topicName;
      request.author = localStorage.getItem("username");

      const response = await doCreateBbs(request);
      console.log(response);
      if (response.data.status === 200) {
        this.$message.info(`create ${this.topicName} successfully!`);
        this.getTopicAll();
      } else {
        this.$message.error(response.data.data);
      }
    },
  },
};
</script>
<style>
.demo-loadmore-list {
  min-height: 350px;
}
</style>