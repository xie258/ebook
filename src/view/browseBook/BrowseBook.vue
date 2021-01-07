<template>
    <div>
        <div 电子书 class="title">电子书</div>
        <hr>
        <div class="content" v-html="content" @contextmenu.prevent="onContextmenu" @click="selectObject"></div>
        <button @click="test">test</button>
    </div>
</template>

<script>
export default {
    data(){
        return {
            content: this.$store.getters.getContent,
            selectItem:null,
            flag:1,
            range:null,
        }
    },
    created(){
        this.getContent();
    },
    methods:{
        getContent(){
            this.content=this.$store.getters.getContent;
            console.log(this.content)
            this.content="<h1>hello world</h1><h2>kkkkk</h2><p>skldfj</p><span>iiiiiii</span>"
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
                        // this.changeColor()

                        // if (window.getSelection){
                        //     this.selectItem = window.getSelection()
                        //     this.flag=0
                            // let range=this.selectItem.getRangeAt(0)
                            console.log(Object.entries(this.selectItem))
                            console.log(this.range.commonAncestorContainer)
                            var fragment = this.range.extractContents();
                            console.log(fragment)
                            let node = document.createElement("colors");
                            node.appendChild(document.createTextNode(this.range.toString())); 
                            node.style.color="red"
                            node.appendChild(fragment)
                            this.range.insertNode(node);
                            console.log(this.range.toString())
                            // this.flag=1
                        // }

                        }
                    }
                ],
                x:event.clientX,
                y:event.clientY
            })
        },
        test(){
                            console.log(this.range.commonAncestorContainer)
                            var fragment = this.range.extractContents();
                            console.log(fragment)
                            let node = document.createElement("colors");
                            node.appendChild(document.createTextNode(this.range.toString())); 
                            node.style.color="blue"
                            node.appendChild(fragment)
                            this.range.insertNode(node);
                            console.log(this.range.toString())
        },
        selectObject(){
            
                    if (window.getSelection){

                            this.selectItem = window.getSelection()
                            this.range=this.selectItem.getRangeAt(0)
                            console.log((this.range.commonAncestorContainer))
                            // var fragment = this.range.extractContents();
                            // var fragments = this.range.deleteContents();
                            // console.log(fragment)
                            // let node = document.createElement("colors");
                            // node.appendChild(document.createTextNode(this.range.toString())); 
                            // node.style.color="red"
                            // node.appendChild(fragment)
                            // this.range.insertNode(node);
                            // console.log(this.range.toString())

                        // console.log(this.selection)
                        // console.log(Object.entries(this.selectItem))
                        // console.log(range.commonAncestorContainer)


                        // console.log(this.selectItem)
                        // var selection = window.getSelection();
                        // var range = selection.getRangeAt(0);
                        // console.log(range)
                        // console.log(range.toString())
                        // var fragment = range.extractContents();
                        // var fragments = range.deleteContents();
                        // console.log(fragment)
                        // let node = document.createElement("colors");
                        // node.appendChild(document.createTextNode(range.toString())); 
                        // node.style.color="red"
                        // node.appendChild(fragment)
                        // range.insertNode(node);
                        // console.log(range.toString())
                        }
        },
        changeColor(){
                        // let range = this.selectItem.getRangeAt(0);
                        // console.log(range)
                        // console.log(range.toString())
                        // var fragment = range.extractContents();
                        // var fragments = range.deleteContents();
                        // console.log(fragment)
                        // let node = document.createElement("colors");
                        // node.appendChild(document.createTextNode(range.toString())); 
                        // node.style.color="red"
                        // node.appendChild(fragment)
                        // range.insertNode(node);
                        // console.log(range.toString())
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