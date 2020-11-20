<template>
    <div>
        <div v-html="content">

        </div>
    </div>
</template>

<script>
export default {
    data(){
        return {
            content: this.$store.getters.getContent
        }
    },
}
</script>