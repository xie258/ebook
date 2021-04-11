<template>
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
      <a-button v-else @click="onLoadMore"> loading more </a-button>
    </div>
    <a-list-item slot="renderItem" slot-scope="item, index">
      <a slot="actions">edit</a>
      <a slot="actions">more</a>
      <a-list-item-meta
        description="Ant Design, a design language for background applications, is refined by Ant UED Team"
      >
        <a slot="title" href="https://www.antdv.com/">{{ item.last }}</a>
        <a-avatar
          slot="avatar"
          src="https://zos.alipayobjects.com/rmsportal/ODTLcjxAfvqbxHnVXCYX.png"
        />
      </a-list-item-meta>
      <div>content</div>
    </a-list-item>
  </a-list>
</template>
<script>
export default {
  data() {
    return {
      loading: false,
      loadingMore: false,
      showLoadingMore: true,
      data: [
        {
          title: "Ant Design Title 1",
          last: 'ssdf;',
        },
        {
          title: "Ant Design Title 2",
          last: 'ssdf;',
        },
        {
          title: "Ant Design Title 3",
          last: 'ssdf;',
        },
        {
          title: "Ant Design Title 4",
          last: 'ssdf;',
        },
      ],
    };
  },
  mounted() {},
  methods: {
    onLoadMore() {
      //   this.loadingMore = true;
    },
  },
};
</script>
<style>
.demo-loadmore-list {
  min-height: 350px;
}
</style>