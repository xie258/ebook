<template>
  <div>
    <div 电子书 class="title">电子书</div>
    <hr />
    <div
      class="content"
      v-html="content"
      @contextmenu.prevent="onContextmenu"
      @click="selectObject"
    >
    
    </div>

            <p>
            Each team has 11 players on the field. One of these players is the <i>goalkeeper</i>, and the other ten are
            known as <i>"outfield players."</i> The game is played by <b>kicking a ball into the opponent's goal</b>. A
            match has 90 minutes of play, with a break of 15 minutes in the middle. The break in the middle is called
            half-time.
        </p>
    <button @click="test">test</button>
    <button @click="change">change</button>
  </div>
</template>

<script>
export default {
  data() {
    return {
      content: this.$store.getters.getContent,
      selectRange: null, // 用户选择的range
      selection: null, //   用户选择的selection
      highlighter:  null,   //  高亮器
      selectItem: null,
      flag: 1,
      range: null,
      testContent: null,
      id: null,
      savedSel:null,
      savedSelActiveElement:null,
    };
  },
  created() {
    //  获取编辑器内容
    this.getContent();
  },
  mounted() {
    //  初始化rangy库
    this.$rangy.init();

    //  创建高亮器
     this.highlighter = this.$rangy.createHighlighter();

    //  添加类

    this.highlighter.addClassApplier( this.$rangy.createClassApplier("highlightssss"));


     // Enable buttons
    // var saveRestoreModule = this.$rangy.modules.SaveRestore;
    // var savedSelActiveElement = null;
  },
  methods: {
    /**
     * @description 获取编辑内容
     * @param
     * @return
     */
    getContent() {
      this.content = this.$store.getters.getContent;
      console.log(this.content);
      this.content =
        "<h1>hello world</h1><h2>kkkkk</h2><p>skldfj</p><span>iiiiiii</span>";
    },

    /**
     * @description 右键菜单列表
     * @param
     * @return
     */
    onContextmenu() {
      this.$contextmenu({
        items: [
          {
            label: "标注",
            children:[
                {
                    label:"高亮",
                    onClick: () => {
                        if (this.selectRange) {
                                  if (this.savedSel) {
                                this.$rangy.restoreSelection(this.savedSel, true);
                                this.savedSel = null;

                                window.setTimeout(function() {
                                    if (this.savedSelActiveElement && typeof this.savedSelActiveElement.focus != "undefined") {
                                        this.savedSelActiveElement.focus();
                                        console.log(this.savedSelActiveElement)
                                    }
                                }, 1);
                            }

    //  添加类
    this.highlighter.addClassApplier( this.$rangy.createClassApplier("highlight"));
                            this.highlighter.highlightSelection("highlightssss")
                            console.log(this.highlighter)
                            console.log(this.$rangy.getSelection(this.highlighter.doc))
                            console.log(this.$rangy.getSelection().getRangeAt(0).toString())
                            console.log(this.selection.getRangeAt(0).toString())
                            console.log(this.selectRange.toString())
                            // var el = document.createElement("span");
                            // el.id = new Date().getTime();
                            // this.id = el.id;
                            // // el.style.backgroundColor = "lightblue";
                            // // el.style.color = "red";
                            // // el.style.fontWeight = "bold";
                            // // el.appendChild(document.createTextNode("**INSERTED NODE**"));
                            // console.log(this.selectRange)
                            // this.selectRange.insertNode(el);

                            // console.log(this.selectRange.selectNode())

                            // if (this.id) {
                            //     console.log(this.id)
                            //     console.log(this.selection)
                            //     this.highlighter.highlightSelection("highlight", this.selection, this.id);
                            // }
            // }


                            // //  插入tag标签，以便还原恢复
                            // var el = document.createElement("span");
                            // el.style.backgroundColor = "lightblue";
                            // el.style.color = "red";
                            // el.style.fontWeight = "bold";
                            // el.appendChild(document.createTextNode("**INSERTED NODE**"));
                            // this.testContent.insertNode(el);
                            // // this.$rangy.getSelection().setSingleRange(this.testContent);
                            
                        }
                    },
                },
            ],
           
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
            //   console.log(Object.entries(this.selectItem));
            //   console.log(this.range.commonAncestorContainer);
            //   var fragment = this.range.extractContents();
            //   console.log(fragment);
            //   let node = document.createElement("colors");
            //   node.appendChild(document.createTextNode(this.range.toString()));
            //   node.style.color = "red";
            //   node.appendChild(fragment);
            //   this.range.insertNode(node);
            //   console.log(this.range.toString());
              // this.flag=1
              // }
            // },
          },
        ],
        x: event.clientX,
        y: event.clientY,
      });
    },
    test() {
console.log("savedSel",this.savedSel)
      // 恢复selection
                  if (this.savedSel) {
                this.$rangy.restoreSelection(this.savedSel, true);
                this.savedSel = null;

                window.setTimeout(function() {
                    if (this.savedSelActiveElement && typeof this.savedSelActiveElement.focus != "undefined") {
                        this.savedSelActiveElement.focus();
                        console.log(this.savedSelActiveElement)
                    }
                }, 1);
            }

      // console.log(this.range.commonAncestorContainer);
      if (this.testContent) {
        console.log(this.testContent);
        var el = document.createElement("span");
        el.id = new Date().getTime();
        this.id = el.id;
        // el.style.backgroundColor = "lightblue";
        // el.style.color = "red";
        // el.style.fontWeight = "bold";
        // el.appendChild(document.createTextNode("**INSERTED NODE**"));
        this.testContent.insertNode(el);
      }
    },
    /**
     * @description 获取容器名称
     */
    getContainingSpan(node) {
            while (node) {
                if (node.nodeType == 1 && node.nodeName == "SPAN") {
                    return node;
                }
                node = node.parentNode;
            }
            return null;
    },
    change() {
      this.highlighter.highlightSelection("highlightssss")
      // if (this.id) {
      //   let el = document.getElementById(this.id);
      //   el.style.backgroundColor = "lightblue";
      //   el.style.color = "red";
      //   el.style.fontWeight = "bold";
      //   // el.appendChild(document.createTextNode("**INSERTED NODE**"));
      //   // this.testContent.insertNode(el);}
      // }
    },

    /**
     * @description 获取selection对象
     * @param
     * @return void
     */
    selectObject() {
      if (window.getSelection) {

         this.highlighter.highlightSelection("highlightssss")
         console.log(this.highlighter)


        // let sel = this.$rangy.getSelection();
        // this.selectRange = window.getSelection().getRangeAt(0) 
        // // this.selection = this.$rangy.saveSelection()
        // this.selection = sel
        // //  保存selection
        // // Remove markers for previously saved selection
        // console.log(this.savedSel)
        //     if (this.savedSel) {
        //         this.$rangy.removeMarkers(this.savedSel);
        //     }
        //     this.savedSel = this.$rangy.saveSelection();
        //     this.savedSelActiveElement = document.activeElement;
        //     console.log(this.savedSelActiveElement)
      }
    },
  },
};
</script>

<style scoped>
.title {
  font-size: 30px;
}

.content {
  height: 300px;
}


.highlightssss {
    background-color: yellow;
}

</style>