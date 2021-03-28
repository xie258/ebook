<template>
  <div>
      <div>{{selectData}}</div>
      <div>{{title}}</div>
  </div>
</template>

<script>
export default {
    name: 'paper-select-show',
    props: [
        'selectData'
    ],
    data() {
        return {
            title: this.selectData,
            answer: '12344',
        }
    },
}
</script>

<style>

</style>