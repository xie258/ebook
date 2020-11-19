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
            content:"<h1>hello</h1>"
        }
    },
}
</script>