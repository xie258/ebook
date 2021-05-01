<template>
  <div>
    <a-button type="primary" @click="saveText()"  style='margin-right:100px'>save</a-button>
    <a-button type="primary" @click="loadText()">load Text</a-button>
    <div @contextmenu.prevent="onContextmenu" style="margin-top:50px">
      <div id="text" @click="seldocs" v-html="contentHtml"></div>
    </div>
  </div>
</template>

<script>
import { doSaveBook, doLoadBook } from "@/api/ebook";

export default {
  data() {
    return {
      highlighter: null,
      doc: null,
      savedSel: null,
      savedSelActiveElement: null,
      savepoint: [],
      highset: [],
      contentHtml: "<div>hello world <p>hello nihao ma </p></div>",
    };
  },
  mounted() {
    this.ebookId = this.$route.query.ebookId;
    this.contentHtml = localStorage.getItem("contentHtml");
    this.$rangy.init();
    this.highlighter = this.$rangy.createHighlighter();
    this.highlighter.addClassApplier(
      this.$rangy.createClassApplier("highlight")
    );
  },
  methods: {
    async saveText() {
      const request = {};
      request.ebookId = 1;
      request.contentHtml = document.getElementById("text").innerHTML;
      request.username = localStorage.getItem("username");
      const response = await doSaveBook(request);
      if (response.data.status === 200) {
        this.$message.info(`load book successfully!`);
      } else {
        this.$message.error(response.data.data);
      }
    },
    async loadText() {
      const request = {};
      request.ebookId = 1;
      request.username = localStorage.getItem("username");
      const response = await doLoadBook(request);
      if (response.data.status === 200) {
        this.$message.info(`load book successfully!`);
        console.log(response.data.data);
        const data = response.data.data;
        if (data.length > 0) {
          this.contentHtml = data[0].contentHtml;
        } else {
          this.$message.error(`load bok error`);
        }
      } else {
        this.$message.error(response.data.data);
      }
    },
    seldocs() {
      let sel = this.$rangy.getSelection();
      this.selectRange = window.getSelection().getRangeAt(0);

      this.selection = sel;
      if (this.savedSel) {
        this.$rangy.removeMarkers(this.savedSel);
      }
      this.savedSel = this.$rangy.saveSelection();
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
                    this.$rangy.restoreSelection(this.savedSel, true);
                    this.highlighter.addClassApplier(
                      this.$rangy.createClassApplier("highlight")
                    );
                    this.highlighter.highlightSelection("highlight");
                    this.savedSel = null;
                    const ttt = document.getElementById("text").innerHTML;
                    console.log(ttt);
                  }
                },
              },
              {
                label: "取消标注",
                onClick: () => {
                  if (this.savedSel) {
                    this.$rangy.restoreSelection(this.savedSel, true);
                    console.log(this.savedSel);
                    this.highlighter.unhighlightSelection();
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
.highlight {
  background-color: yellow;
}

.underline {
  text-decoration: underline;
}
</style>