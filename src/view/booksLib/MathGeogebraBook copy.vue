<template>
  <div class="mainbody">
      <div class="group-btn" @click="flipPage">
          <a class="lastBtn">pre</a>
          <a class="nextBtn">next</a>
      </div>
    <div class="content">
      <div class="card">
        <div class="front"> <div class="book" id="ggbApplet" style=' backface-visibility: hidden ;margin:0 auto'></div></div>
        <div class="back">
          <!-- <img src="static/img/dataImg1.png" alt /> -->
         <div >  <h3>ddddd</h3>hhhhhh</div> 第一页back
        </div>
      </div>
      <div class="card">
        <div class="front">第二页asdfsdfsfddf
          <!-- <img src="static/img/dataImg1.png" alt /> -->
        </div>
        <div class="back">
          <!-- <img src="static/img/dataImg2.png" alt /> -->
          <h1>第e页back</h1>
        </div>
      </div>
      <div class="card">
        <div class="front">第三页
          <!-- <img src="static/img/dataImg1.png" alt /> -->
          </div>
        <div class="back">
          <!-- <img src="static/img/dataImg3.png" alt /> -->
          <h1>第s页back</h1>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
export default {
      data() {
    return {
      pageNum: 0,
      runPages: [],
      pages: 0,
    };
  },
    created() {

    },
    mounted() {
        this.runPages = document.querySelectorAll('.card')
        this.pages = this.runPages.length;
        console.log(this.runPages)
        for (let k=0, len = this.runPages.length; k<len; k++) {
            this.runPages[k].style.zIndex = len - k;
        }

        var parameters = {
"id": "ggbApplet",
// "width":500,
// "height":500,
"showResetIcon":true,
"borderColor":"white",
"language":"en",
"ggbBase64":"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"};
var applet = new GGBApplet(parameters, '5.0');
applet.inject('ggbApplet');
    },
    methods:{
        flipPage(e) {
            let cls = e.target.className;

            switch(cls) {
                case 'nextBtn':
                    if(this.pageNum < 3){
                        // if (this.pageNum > 0) {
                        //   this.runPages[this.pageNum-1].style.zIndex = this.pages - this.pageNum + 1;
                        // }
                        console.log(this.pages)
                        this.runPages[this.pageNum].classList.add('left')
                        this.pageNum++;
                    }
                    break;
                case 'lastBtn':
                    if(this.pageNum>0){
                      if(this.pageNum>1){
                        console.log("pre",this.runPages[this.pageNum-2].style.zIndex)
                        let temp = parseInt(this.runPages[this.pageNum-2].style.zIndex) + 1;
                        this.runPages[this.pageNum-1].style.zIndex = 101;
                      }

                    this.pageNum--;
                    console.log("now", this.runPages[this.pageNum].style.zIndex)
                    this.runPages[this.pageNum].classList.remove('left')


                    setTimeout(() => {
                      this.runPages[this.pageNum].style.zIndex =  this.pages - this.pageNum;
                    }, 500)
                    }

                    break;
            }
        },
    }
}
</script>

<style lang="less" scoped>
* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}

.mainbody {
  display: flex;
  justify-content: center;
  align-items: center;
  flex-direction: column;
  height: 100vh;
  overflow: hidden;
}

.content {
  width: 800px;
  height: 600px;
  border: 1px solid #000;
  position: relative;
  //舞台
  // 视距
  perspective: 1500px;

}

.card {
  width: 400px;
  height: 600px;
  position: absolute;
  right: 0;
  background: #b5e8f1;
  transition: transform 2s;
  transform-style: preserve-3d;
    transform-origin: 0% 0%;
    
  &.left {
    transform: rotateY(-180deg);
    z-index: 100!important;
  }
  div.front,div.back {
    width: 100%;
    height: 100%;
    position: absolute;
            backface-visibility: hidden;

    
  }

  div.back {
    transform: rotateY(-180deg) inset;
        display: flex;
    justify-content: center;
    align-items: center;
    font-size: 20px;
    font-weight: bold;
    color: #032303;
    padding: 30px;
    transform: rotateY(180deg);
    // box-shadow: 0 0 30px rgba(0, 0, 0, 0.7) inset;
  }

  div.front {
    display: flex;
    justify-content: center;
    align-items: center;
    font-size: 20px;
    font-weight: bold;
    color: #032303;
    padding: 30px;
    box-shadow: 0 0 30px rgba(0, 0, 0, 0.7) inset;
    // backface-visibility: hidden;
  }

    .book {
    width: 100%;
    height: 100%;
    position: absolute;
    backface-visibility: hidden;
       -webkit-backface-visibility:hidden
    }

  img {
    width: 100%;
    height: 100%;
  }
}

.group-btn {
    position: absolute;
    top: 50%;
    width: 100%;
    display: flex;
    justify-content: space-between;
    a {
        background: #666;
        width: 60px;
        height: 50px;
        line-height: 50px;
        color: #fff;
        z-index: 10;
        cursor: pointer;
        text-align: center;
        font-size: 20px;
    }
}
</style>
