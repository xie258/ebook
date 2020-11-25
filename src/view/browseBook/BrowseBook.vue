<template>
    <div>
        <div 电子书 class="title">电子书</div>
        <hr>
        <div class="content" v-html="content" @contextmenu.prevent="onContextmenu" @mouseup="selectObject"></div>
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
    created(){
        this.getContent();
    },
    methods:{
        getContent(){
            this.content=this.$store.getters.getContent;
            console.log(this.content)
        },
        onContextmenu(){
           
            this.$contextmenu({
                items:[
                    {
                        label:"标注",
                        onClick:()=>{
                    // if (window.getSelection){
                    //     let selection = window.getSelection();
                    //     let range = selection.getRangeAt(0);
                    //     let fragment = range.extractContents();
                    //     console.log(fragment)
                    //     let node = document.createElement("RRU");
                    //     node.appendChild(fragment)
                    //     console.log(node)
                    //     range.insertNode(node);
                        
                        
                    //     }
                        
                        }
                    }
                ],
                x:event.clientX,
                y:event.clientY
            })
        },
        selectObject(){
            
                    if (window.getSelection){
                        var selection = window.getSelection();
                        var range = selection.getRangeAt(0);
                        console.log(range.toString())
                        var fragment = range.extractContents();
                        var fragments = range.deleteContents();
                        console.log(fragment)
                        let node = document.createElement("colors");
                        node.appendChild(document.createTextNode(range.toString())); 
                        node.style.color="red"
                        node.appendChild(fragment)
                        range.insertNode(node);
                        console.log(range.toString())
                        }
        },
        changeColor(){

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