<template>
  <div>
      <div v-html="contentHtml"></div>
  </div>
</template>

<script>
export default {
    data() {
        return {
            ebookId: -1,
            contentHtml: "",
        }
    },
    mounted() {
        this.ebookId = this.$route.query.ebookId;
        this.contentHtml = localStorage.getItem("contentHtml")
    },
    methods:{

    }
}
</script>

<style>

</style>