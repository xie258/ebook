<template>
  <div @contextmenu.prevent="onContextmenu">
    <div @click="seldocs">
      <h3>Highlighter</h3>
      <p>
        Make a selection in the document and use the buttons below to highlight
        and unhighlight.
      </p>
      <input
        type="button"
        @click="highlightSelectedText()"
        value="Highlight selection"
      />
      <p class="small">
        Text adapted from
        <a href="http://simple.wikipedia.org/wiki/Association_football"
          >Simple Wikipedia page on Association Football</a
        >, licensed under the
        <a
          href="http://simple.wikipedia.org/wiki/Wikipedia:Text_of_Creative_Commons_Attribution-ShareAlike_3.0_Unported_License"
          >Creative Commons Attribution/Share-Alike License</a
        >.
      </p>
    </div>
    <input @click="restore()" type="button" value="restore" />
  </div>
</template>

<script>
export default {
  data() {
    return {
      highlighter: null,
      doc: null,
      savedSel: null,
      savedSelActiveElement: null,
      savepoint: [],
      highset: [],
    };
  },
  mounted() {
    this.$rangy.init();
    this.highlighter = this.$rangy.createHighlighter();
    this.highlighter.addClassApplier(
      this.$rangy.createClassApplier("highlights")
    );
  },
  methods: {
    highlightSelectedText() {
      this.highlighter.highlightSelection("highlights");
    },

    seldocs() {
      let sel = this.$rangy.getSelection();
      this.selectRange = window.getSelection().getRangeAt(0);
      // this.selection = this.$rangy.saveSelection()
      this.selection = sel;
      //  保存selection
      // Remove markers for previously saved selection

      if (this.savedSel) {
        this.$rangy.removeMarkers(this.savedSel);
      }
      this.savedSel = this.$rangy.saveSelection();

      // this.savedSelActiveElement = document.activeElement;
      //     console.log(this.savedSelActiveElement)
    },
    restore() {
      console.log(this.savepoint);
      let array = this.savepoint;

      array.forEach((element) => {
        document.getElementById(element.id).setAttribute("class", "highlights");
        console.log(document.getElementById(element.id));
        // if(!element["hig"]){
        //      this.highlighter.highlights=element["hig"]
        // }

        // element.restored=false
        // this.$rangy.restoreSelection(element, true);
      });

      // this.highlighter.highlights=JSON.parse(JSON.stringify(this.highset))
      this.highlighter.highlights = [];
      this.highlighter.highlights.push(this.clone(this.highset)["0"]);

      // this.highlighter.highlights=this.highset
      console.log(this.clone(this.highset));
      console.log(this.highlighter.highlights);
      console.log(this.highlighter);

      if (this.highset == this.highlighter.highlights) {
        console.log("simialr");
      }
    },
    clone(obj) {
      // let result = Array.isArray(obj) ? [] : {};


      if (obj === null) return null;
      if (obj.constructor === HTMLDocument) return obj;

      console.log(obj)
      // console.log(obj.__proto__)
      // console.log(obj.__proto__)
      let result = new obj.constructor(); //保持继承的原型
      result.__proto__=obj.__proto__
      // console.log(result)
      for (let key in obj) {
        if (obj.hasOwnProperty(key)) {
          if (typeof obj[key] === "object") {
            result[key] = this.clone(obj[key]); // 递归复制
          } else {
            result[key] = obj[key];
          }
        }
      }
      console.log(result.__proto__)
      return result;
    },

    onContextmenu() {
      this.$contextmenu({
        items: [
          {
            label: "标注",
            children: [
              {
                label: "高亮",
                onClick: () => {
                  if (this.savedSel) {
                    console.log(this.savedSel);
                    let idname = document.getElementById(
                      this.savedSel.rangeInfos[0].endMarkerId
                    );
                    let id = new Date().getTime() + "highlights";
                    idname.parentNode.id = "parent";

                    this.$rangy.restoreSelection(this.savedSel, true);
                    this.highlighter.highlightSelection("highlights");
                    // console.log(idname.parentNode)
                    // console.log(idname.parentNode.getElementsByClassName("highlights"))
                    // let array=idname.parentNode.getElementsByClassName("highlights")
                    let array = document.getElementById("parent").children;
                    // console.log(array)

                    for (let index = 0; index < array.length; index++) {
                      const element = array[index];
                      console.log(element.id);
                      if (!element.id) {
                        element.id = id;
                        // this.highset=this.highlighter.highlights
                        // this.highset=JSON.parse(JSON.stringify(this.highset))

                        console.log(this.highlighter.highlights)
                        this.highset = this.clone(this.highlighter.highlights);

                        console.log(this.highset[0].__proto__)
                        if (this.highset == this.highlighter.highlights) {
                          console.log("simialr");
                        }

                        // this.highset.push(this.highlighter.highlights)

                        this.savepoint.push({
                          id: id,
                          hig: this.highlighter.highlights,
                        });
                        console.log(element);
                      }
                    }

                    this.savedSel = null;

                    // let clss=document.getElementsByClassName("highlights")
                    // console.log(clss)
                  }
                },
              },
              {
                label: "下划线",
                onClick: () => {
                  if (this.savedSel) {
                    this.$rangy.restoreSelection(this.savedSel, true);
                    this.highlighter.addClassApplier(
                      this.$rangy.createClassApplier("underline")
                    );
                    this.highlighter.highlightSelection("underline");

                    this.savedSel = null;
                  }
                },
              },
              {
                label: "取消标注",
                onClick: () => {
                  if (this.savedSel) {
                    this.$rangy.restoreSelection(this.savedSel, true);
                    console.log(this.highset);
                    console.log(this.highlighter);
                    //  this.highlighter.highlights=this.highset

                    // this.highset=this.clone(this.highlighter.highlights)

                    console.log(this.highlighter);
                    this.highlighter.unhighlightSelection();
                    console.log(this.highlighter);
                    this.savedSel = null;
                  }
                },
              },
            ],
          },
        ],
        x: event.clientX,
        y: event.clientY,
      });
    },
  },
};
</script>

<style>
.highlights {
  background-color: yellow;
}

.underline {
  text-decoration: underline;
}
</style>