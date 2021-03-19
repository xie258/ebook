<template>
  <div class="mainbody">
      <div class="group-btn" @click="flipPage">
          <a class="lastBtn">pre</a>
          <a class="nextBtn">next</a>
      </div>
    <div class="content">
      <div class="card">
        <div class="front"><h1>第一页</h1></div>
        <div class="back">
          <!-- <img src="static/img/dataImg1.png" alt /> -->
          <h1>第一页back</h1>
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
    // backface-visibility: hidden;
  }

  div.back {
    transform: rotateY(180deg) inset;
        
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
    backface-visibility: hidden;
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
