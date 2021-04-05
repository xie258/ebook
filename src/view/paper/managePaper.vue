<template>
<div>
        <a-input-search
      placeholder="input search text"
      style="width: 60%"
      @search="onSearch"
    />
        <a-button type="primary" @click='goto("createPaper")'>
      New paper
    </a-button>


    <a-table :columns="columns" :data-source="data">
    <a slot="name" slot-scope="text">{{ text }}</a>
    <span slot="customTitle"><a-icon type="smile-o" /> Name</span>
    <span slot="tags" slot-scope="tags">
      <a-tag
        v-for="tag in tags"
        :key="tag"
        :color="tag === 'loser' ? 'volcano' : tag.length > 5 ? 'geekblue' : 'green'"
      >
        {{ tag.toUpperCase() }}
      </a-tag>
    </span>
    <span slot="action" slot-scope="text, record">
      <a>Enter</a>
      <a-divider type="vertical" />
      <a>Delete</a>
    </span>
  </a-table>

</div>

</template>

<script>

const columns = [
  {
    dataIndex: 'name',
    key: 'name',
    slots: { title: 'customTitle' },
    scopedSlots: { customRender: 'name' },
  },
  {
    title: 'Tags',
    key: 'tags',
    dataIndex: 'tags',
    scopedSlots: { customRender: 'tags' },
  },
  {
    title: 'Action',
    key: 'action',
    scopedSlots: { customRender: 'action' },
  },
];

const data = [
  {
    key: '1',
    name: 'John Brown',
    tags: ['nice', 'developer'],
  },
  {
    key: '2',
    name: 'Jim Green',
    tags: ['loser'],
  },
  {
    key: '3',
    name: 'Joe Black',
    tags: ['cool', 'teacher'],
  },
];

export default {
  data() {
    return {
      data,
      columns,
    };
  },
    methods: {
    onSearch(value) {
      console.log(value);
    },
    goto(path) {
      this.$router.push(path);
    }
  },
}
</script>

<style>

</style>