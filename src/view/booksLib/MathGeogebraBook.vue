<template>
  <div>
    <div id="ggbApplet" style="margin: 0 auto"></div>
    <div @contextmenu.prevent="onContextmenu">
      <div @click="seldocs">
        <div class="mainbody">
          <p style="text-align: left">
            抛物线：y = a(x^2) + bx + c 　　(y等于ax 的平方加上 bx再加上 c )
            　　a >0时开口向上　a 0 ) 　　椭圆(很少用到，知道就可以了)
          </p>
          <p style="text-align: left">
            1)周长公式：L=2πb+4(a-b)
            　　椭圆周长定理：椭圆的周长等于该椭圆短半轴长为半径的圆周长(2πb)加上四倍的该椭圆长半轴长(a)与短半轴长(b)的差。
            2)面积公式 ：S=πab
            　　椭圆面积定理：椭圆的面积等于圆周率(π)乘该椭圆长半轴长(a)与短半轴长(b)的乘积。
            　　菱形面积=对角线乘积的一半，即S=(a×b)÷2
          </p>
          <p style="text-align: left">三角形面积：</p>
          <p style="text-align: left">1)已知三角形底a，高h，则S=ah/2</p>
          <p style="text-align: left">
            2)已知三角形三边a,b,c,半周长p,则 　　S= √[p(p - a)(p - b)(p -
            c)](海伦公式)
          </p>
          <p style="text-align: left">
            3)已知三角形两边a,b,这两边夹角C，则S=absinC/2
          </p>
          <p style="text-align: left">
            4)已知三角形半周长p，内接圆半径r，则S=pr
          </p>
          <p style="text-align: left">
            扇形面积： 　　圆心角为n°，半径为r的扇形面积为(n/360)×π(r^2)
          </p>
          <p style="text-align: left">
            如果其顶角采用弧度单位，则可简化为1/2×弧度×半径平方。
            　　扇形还与三角形有相似之处，上述简化的面积公式亦可看成：1/2×弧长×半径，与三角形面积：1/2×底×高相似。
          </p>

          <p style="text-align: left">矩形面积：长×宽</p>

          <p style="text-align: left">
            梯形体积 　　V=〔S1+S2+√(S1*S2)〕/3*H )
            　　(V：体积;S1：上表面积;S2：下表面积;H：高)
          </p>
          <p style="text-align: left">圆柱体体积：V圆柱=S底×h</p>
          <p style="text-align: left">长方体体积：V=长×宽×高</p>

          <p style="text-align: left">正方体体积：V=棱长^3</p>
          <p style="text-align: left">圆锥体体积: V=1/3×S底×h</p>
        </div>

        <input
          type="button"
          @click="highlightSelectedText()"
          value="Highlight selection"
        />
      </div>
      <input @click="restore()" type="button" value="restore" />
    </div>
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
      highset: []
    };
  },
  mounted() {
    var parameters = {
      id: "ggbApplet",
      width: 500,
      height: 500,
      showResetIcon: true,
      borderColor: "white",
      language: "en",
      ggbBase64:
        "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"
    };
    var applet = new GGBApplet(parameters, "5.0");
    applet.inject("ggbApplet");

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

      array.forEach(element => {
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

      console.log(obj);
      // console.log(obj.__proto__)
      // console.log(obj.__proto__)
      let result = new obj.constructor(); //保持继承的原型
      result.__proto__ = obj.__proto__;
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
      console.log(result.__proto__);
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

                        console.log(this.highlighter.highlights);
                        this.highset = this.clone(this.highlighter.highlights);

                        console.log(this.highset[0].__proto__);
                        if (this.highset == this.highlighter.highlights) {
                          console.log("simialr");
                        }

                        // this.highset.push(this.highlighter.highlights)

                        this.savepoint.push({
                          id: id,
                          hig: this.highlighter.highlights
                        });
                        console.log(element);
                      }
                    }

                    this.savedSel = null;

                    // let clss=document.getElementsByClassName("highlights")
                    // console.log(clss)
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

<style>
.highlights {
  background-color: yellow;
}

.underline {
  text-decoration: underline;
}

.bold {
  font-weight: bold;
}
</style>
