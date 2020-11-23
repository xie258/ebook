<template>
    <div>
        <div 电子书 class="title">电子书</div>
        <hr>
        <div class="content" v-html="content" @contextmenu.prevent="onContextmenu"></div>
    </div>
</template>

<script>
export default {
    data(){
        return {
            content: this.$store.getters.getContent,
            selectItem:null,
        }
    },
    methods:{
        onContextmenu(event){
            this.selectItem=event;
            this.$contextmenu({
                items:[
                    {
                        label:"标注",
                        onClick:()=>{
                            this.changeColor(this.selectItem)
                            // console.log(this.selectItem)
                        }
                    }
                ],
                x:event.clientX,
                y:event.clientY
            })
        },
        changeColor(e){
            let userSelection = document.getSelection();
            console.log(userSelection)
            console.log(userSelection.toString())
            let range = userSelection.getRangeAt(0);
            console.log(range)
            let text=range.toString();
            console.log(text)
        }
    }

}
</script>

<style scoped>
.title {
    font-size: 30px;
}

.content {
    height:300px;
}

</style>