<template>
  <div>
    <!-- <a-button type="primary" @click="saveText()"  style='margin-right:100px'>save</a-button>
    <a-button type="primary" @click="loadText()">load Text</a-button> -->
    <div @contextmenu.prevent="onContextmenu" style="margin-top:50px">
      <div id="text" @click="seldocs" v-html="contentHtml"></div>
    </div>
  </div>
</template>

<script>
import { doSaveBook, doLoadBook } from "@/api/ebook";
import * as echarts from "echarts/dist/echarts.simple.min";

export default {
  data() {
    return {
      highlighter: null,
      doc: null,
      savedSel: null,
      savedSelActiveElement: null,
      savepoint: [],
      highset: [],
      contentHtml: "<div>hello world <p>hello nihao ma </p></div>"
    };
  },
  created() {
    this.contentHtml = localStorage.getItem("contentHtml");
    // this.contentHtml = '<h2><a id="Echarts_9"></a>Echarts</h2><p>The width and height is the size for chart container.</p><div style="width:500px;height:400px" class="md-echarts">{"width":500,"height":400,"series":[{"name":"访问来源","type":"pie","radius":"55%","data":[{"value":235,"name":"视频广告"},{"value":274,"name":"联盟广告"},{"value":310,"name":"邮件营销"},{"value":335,"name":"直接访问"},{"value":400,"name":"搜索引擎"}]}]}</div>'
  },
  mounted() {
    this.ebookId = this.$route.query.ebookId;
    this.$rangy.init();
    this.highlighter = this.$rangy.createHighlighter();
    this.highlighter.addClassApplier(
      this.$rangy.createClassApplier("highlight")
    );
        this.highlighter.addClassApplier(
      this.$rangy.createClassApplier("bold")
    );
            this.highlighter.addClassApplier(
      this.$rangy.createClassApplier("underline")
    );
            this.highlighter.addClassApplier(
      this.$rangy.createClassApplier("italic")
    );
            this.highlighter.addClassApplier(
      this.$rangy.createClassApplier("bold")
    );
            this.highlighter.addClassApplier(
      this.$rangy.createClassApplier("bold")
    );
    this.renderEchart();
  },
  methods: {
    renderEchart() {
      this.$nextTick(() => {
        // render echarts
        document.querySelectorAll(".md-echarts").forEach(element => {
          try {
            let options = JSON.parse(element.textContent);
            let chart = echarts.init(element);
            chart.setOption(options);
          } catch (e) {
            element.outerHTML = `<pre>echarts complains: ${e}</pre>`;
          }
        });
        // render mermaid
        // mermaid.init(undefined, document.querySelectorAll(".mermaid"));
        // render flowchart
        // document.querySelectorAll(".md-flowchart").forEach((element) => {
        //     try {
        //         let code = element.textContent.slice(-7);
        //         let flchart = flowchart.parse(code);
        //         element.textContent = "";
        //         flchart.drawSVG(element);
        //     } catch (e) {
        //         element.outerHTML = `<pre>flowchart complains: ${e}</pre>`;
        //     }
        // });
        //renser geogebra
        //这个有点麻烦，得我的后台服务才可以
        // document.querySelectorAll(".ggbid").forEach((element) => {
        //     try {
        //         let code = element.textContent;
        //         let fileName = element.textContent.slice(-15);
        //         $vm.$emit('ggb', code, fileName);
        //         element.textContent = "";
        //         element.outerHTML = `<iframe src="http://127.0.0.1:7000/ggb/` + fileName + `.html" style='width:700px; height:500px; border:0'></iframe>`;
        //     } catch (e) {
        //         element.outerHTML = `<pre>geogebra complains: ${e}</pre>`;
        //     }
        // });
      });
    },
    async saveText() {
      const request = {};
      request.ebookId = 1;
      // request.contentHtml = JSON.stringify(document.getElementById("text").innerHTML);
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
      this.renderEchart();
      const request = {};
      request.ebookId = 1;
      request.username = localStorage.getItem("username");
      const response = await doLoadBook(request);
      if (response.data.status === 200) {
        // this.$message.info(`load book successfully!`);
        console.log(response.data.data);
        const data = response.data.data;
        if (data.length > 0) {
          this.contentHtml = data[0].contentHtml;
        } else {
          // this.$message.error(`load book error`);
          this.$message.error("没有可加载笔记");
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
                }
              },
              {
                label: "字体加粗",
                onClick: () => {
                  if (this.savedSel) {
                    this.$rangy.restoreSelection(this.savedSel, true);
                    this.highlighter.addClassApplier(
                      this.$rangy.createClassApplier("bold")
                    );
                    this.highlighter.highlightSelection("bold");

                    this.savedSel = null;
                  }
                }
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
                }
              },
                                          {
                label: "斜体",
                onClick: () => {
                  if (this.savedSel) {
                    this.$rangy.restoreSelection(this.savedSel, true);
                    this.highlighter.addClassApplier(
                      this.$rangy.createClassApplier("italic")
                    );
                    this.highlighter.highlightSelection("italic");

                    this.savedSel = null;
                  }
                }
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
                }
              }
            ]
          }
        ],
        x: event.clientX,
        y: event.clientY
      });
    }
  }
};
</script>

<style >
.highlight {
  background-color: yellow;
}

.underline {
  text-decoration: underline;
}

.bold {
  font-weight: bold;
}

.italic{ font-style:italic} 
</style>
