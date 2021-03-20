<template>
  <div class="mainbody">
      <div class="group-btn" @click="flipPage">
          <a class="lastBtn">pre</a>
          <a class="nextBtn">next</a>
      </div>
    <div class="content">
                                      <div class="card">                 <div class="front">                     <img src="https://p5.itc.cn/q_70/images03/20210123/f2f64346c425442e9c7e1e921c531286.jpeg" alt />                  </div>                 <div class="back">                     <img src="https://p7.itc.cn/q_70/images03/20210123/7725ab1c69fb4930b2054155d35e17a7.jpeg" alt />                 </div>             </div> 
                          <div class="card">                 <div class="front">                     <img src="https://p0.itc.cn/q_70/images03/20210123/f56f5f01faf94ecb8ae2d37001706b7a.jpeg" alt />                  </div>                 <div class="back">                     <img src="https://p7.itc.cn/q_70/images03/20210123/959f610723944fe081c54571a4e15bad.jpeg" alt />                 </div>             </div> 
                          <div class="card">                 <div class="front">                     <img src="https://p0.itc.cn/q_70/images03/20210123/9366b034a43041729fe454f44690b14b.jpeg" alt />                  </div>                 <div class="back">                     <img src="https://p2.itc.cn/q_70/images03/20210123/ec9d63362893470790504a98ae6344f8.jpeg" alt />                 </div>             </div> 
                          <div class="card">                 <div class="front">                     <img src="https://p8.itc.cn/q_70/images03/20210123/18ca48e634d948feab046c83ebf95de0.jpeg" alt />                  </div>                 <div class="back">                     <img src="https://p0.itc.cn/q_70/images03/20210123/17a148060fdb4a36b4465ea88277fbb3.jpeg" alt />                 </div>             </div> 
                          <div class="card">                 <div class="front">                     <img src="https://p0.itc.cn/q_70/images03/20210123/a5d366391e8d47aaaf660d7ab16d10cc.jpeg" alt />                  </div>                 <div class="back">                     <img src="https://p1.itc.cn/q_70/images03/20210123/806ac466ad5b423d8b7fcc08dc1856f8.jpeg" alt />                 </div>             </div> 
                          <div class="card">                 <div class="front">                     <img src="https://p4.itc.cn/q_70/images03/20210123/d333cb9df89a41fe9508922cf425b8a8.jpeg" alt />                  </div>                 <div class="back">                     <img src="https://p4.itc.cn/q_70/images03/20210123/fa5e67e9d8b34b7996eaf2b1b2e052ee.jpeg" alt />                 </div>             </div> 
                          <div class="card">                 <div class="front">                     <img src="https://p1.itc.cn/q_70/images03/20210123/54c05676dc9240f89d630a3bd034f67a.jpeg" alt />                  </div>                 <div class="back">                     <img src="https://p7.itc.cn/q_70/images03/20210123/fd92668290044de096b3d5ca1edb686c.jpeg" alt />                 </div>             </div> 
                          <div class="card">                 <div class="front">                     <img src="https://p8.itc.cn/q_70/images03/20210123/df602726938b4c8fa9a43f73c0be041e.jpeg" alt />                  </div>                 <div class="back">                     <img src="https://p1.itc.cn/q_70/images03/20210123/13a6d299f07b4c9ca861212f174300a8.jpeg" alt />                 </div>             </div> 
                          <div class="card">                 <div class="front">                     <img src="https://p7.itc.cn/q_70/images03/20210123/1d523e95a12a403494de0bb341a8a1e5.jpeg" alt />                  </div>                 <div class="back">                     <img src="https://p1.itc.cn/q_70/images03/20210123/1cee66e740e940da8f84daad84f395ad.jpeg" alt />                 </div>             </div> 
                          <div class="card">                 <div class="front">                     <img src="https://p0.itc.cn/q_70/images03/20210123/9884d846769740cd9a550a95b28421a7.jpeg" alt />                  </div>                 <div class="back">                     <img src="https://p0.itc.cn/q_70/images03/20210123/2ccb7bbfac8d484d85467fd8e29954ee.jpeg" alt />                 </div>             </div> 
                          <div class="card">                 <div class="front">                     <img src="https://p2.itc.cn/q_70/images03/20210123/6aad6f0b2abd4eda97de75ce6ebc1363.jpeg" alt />                  </div>                 <div class="back">                     <img src="https://p7.itc.cn/q_70/images03/20210123/f0e329d0f2bd407fa6baa1e04624cb3e.jpeg" alt />                 </div>             </div> 
                          <div class="card">                 <div class="front">                     <img src="https://p4.itc.cn/q_70/images03/20210123/827786da1ec8448aacb5c0ee635c8f4e.jpeg" alt />                  </div>                 <div class="back">                     <img src="https://p7.itc.cn/q_70/images03/20210123/af7de95446e84d6692a74363d9b77437.jpeg" alt />                 </div>             </div> 
                          <div class="card">                 <div class="front">                     <img src="https://p2.itc.cn/q_70/images03/20210123/cdb05765d48e45228ca68c73e38ac53c.jpeg" alt />                  </div>                 <div class="back">                     <img src="https://p0.itc.cn/q_70/images03/20210123/63721881c2b54e82b09480ffa371db21.jpeg" alt />                 </div>             </div> 
                          <div class="card">                 <div class="front">                     <img src="https://p6.itc.cn/q_70/images03/20210123/9b813dd90cee4c44adc2ffec580b8af2.jpeg" alt />                  </div>                 <div class="back">                     <img src="https://p1.itc.cn/q_70/images03/20210123/595b4c921c484a7cbb7c6c255ac6bb48.jpeg" alt />                 </div>             </div> 
                          <div class="card">                 <div class="front">                     <img src="https://p9.itc.cn/q_70/images03/20210123/a4d91a32f955477c95c36c2651e43a6a.jpeg" alt />                  </div>                 <div class="back">                     <img src="https://p8.itc.cn/q_70/images03/20210123/d83c80437fe543179348ab59dbf1ba8e.jpeg" alt />                 </div>             </div> 
                          <div class="card">                 <div class="front">                     <img src="https://p9.itc.cn/q_70/images03/20210123/650aa9d691c34076ba4973827deb5f99.jpeg" alt />                  </div>                 <div class="back">                     <img src="https://p4.itc.cn/q_70/images03/20210123/986ab45ff27d47bbb17731dcd84eae98.jpeg" alt />                 </div>             </div> 
                          <div class="card">                 <div class="front">                     <img src="https://p1.itc.cn/q_70/images03/20210123/ea8c31a8a3a74f769003b7f72c538c04.jpeg" alt />                  </div>                 <div class="back">                     <img src="https://p2.itc.cn/q_70/images03/20210123/b97f13d15a634051b820f8fe1e140c9f.jpeg" alt />                 </div>             </div> 
                          <div class="card">                 <div class="front">                     <img src="https://p0.itc.cn/q_70/images03/20210123/8af32f41d49e4b0394d067743d69edf5.jpeg" alt />                  </div>                 <div class="back">                     <img src="https://p1.itc.cn/q_70/images03/20210123/3c78189f37ec4575bd22409c57be3393.jpeg" alt />                 </div>             </div> 
                          <div class="card">                 <div class="front">                     <img src="https://p3.itc.cn/q_70/images03/20210123/13a2377469b14555a4a5938004f9c444.jpeg" alt />                  </div>                 <div class="back">                     <img src="https://p6.itc.cn/q_70/images03/20210123/1c0d10cff935421581e5f0e764d42c56.jpeg" alt />                 </div>             </div> 
                          <div class="card">                 <div class="front">                     <img src="https://p8.itc.cn/q_70/images03/20210123/8399ce9865684dadac7c108c0e96f894.jpeg" alt />                  </div>                 <div class="back">                     <img src="https://p2.itc.cn/q_70/images03/20210123/2636c58851604a2594be49eabd1b1700.jpeg" alt />                 </div>             </div> 
                          <div class="card">                 <div class="front">                     <img src="https://p5.itc.cn/q_70/images03/20210123/35bb636100f24a6ba65cbba2ea4d6e9e.jpeg" alt />                  </div>                 <div class="back">                     <img src="https://p7.itc.cn/q_70/images03/20210123/693529655b324b73947c0dd581c80f74.jpeg" alt />                 </div>             </div> 
                          <div class="card">                 <div class="front">                     <img src="https://p6.itc.cn/q_70/images03/20210123/89ab7b32fce548d2a967ae90a6e987bb.jpeg" alt />                  </div>                 <div class="back">                     <img src="https://p4.itc.cn/q_70/images03/20210123/c4cbbacce6ab412991520b343df125ca.jpeg" alt />                 </div>             </div> 
                          <div class="card">                 <div class="front">                     <img src="https://p0.itc.cn/q_70/images03/20210123/f29dd8dadbb047a8bcecae6c63c76123.jpeg" alt />                  </div>                 <div class="back">                     <img src="https://p6.itc.cn/q_70/images03/20210123/8773715171d848ef89797e38cdcdc0f9.jpeg" alt />                 </div>             </div> 
                          <div class="card">                 <div class="front">                     <img src="https://p7.itc.cn/q_70/images03/20210123/b9480d9392814722a38e5e6e9452e29b.jpeg" alt />                  </div>                 <div class="back">                     <img src="https://p8.itc.cn/q_70/images03/20210123/fa0d6981df9045e096dd9fbc699b32f4.jpeg" alt />                 </div>             </div> 
                          <div class="card">                 <div class="front">                     <img src="https://p6.itc.cn/q_70/images03/20210123/8d8ad70e8a054af7bf705d195f28ca27.jpeg" alt />                  </div>                 <div class="back">                     <img src="https://p6.itc.cn/q_70/images03/20210123/b8db49eb33d041a68f417bdb90323448.jpeg" alt />                 </div>             </div> 
                          <div class="card">                 <div class="front">                     <img src="https://p1.itc.cn/q_70/images03/20210123/9071e2372f9c403faa9eee93ee6dfd09.jpeg" alt />                  </div>                 <div class="back">                     <img src="https://p4.itc.cn/q_70/images03/20210123/b0400e41a16f4470afacdd16e9aa93d9.jpeg" alt />                 </div>             </div> 
                          <div class="card">                 <div class="front">                     <img src="https://p0.itc.cn/q_70/images03/20210123/9f3923e6495440fb89b2160979ff1625.jpeg" alt />                  </div>                 <div class="back">                     <img src="https://p5.itc.cn/q_70/images03/20210123/517c8048eb4f46ae8d951363052895c5.jpeg" alt />                 </div>             </div> 
                          <div class="card">                 <div class="front">                     <img src="https://p0.itc.cn/q_70/images03/20210123/c352e238456d4174a2518ff0a6f3e317.jpeg" alt />                  </div>                 <div class="back">                     <img src="https://p4.itc.cn/q_70/images03/20210123/bc82715d0c2343adb57c8d93d6a0c736.jpeg" alt />                 </div>             </div> 
                          <div class="card">                 <div class="front">                     <img src="https://p0.itc.cn/q_70/images03/20210123/7680e0f9c40345a196b57c2872723d4e.jpeg" alt />                  </div>                 <div class="back">                     <img src="https://p9.itc.cn/q_70/images03/20210123/8db4f1f948dd42df984f3f8275096d10.jpeg" alt />                 </div>             </div> 
                          <div class="card">                 <div class="front">                     <img src="https://p3.itc.cn/q_70/images03/20210123/7de09f3dac07462994fb3565ca1ec580.jpeg" alt />                  </div>                 <div class="back">                     <img src="https://p4.itc.cn/q_70/images03/20210123/94e3251aa16543e78a04762edea09eaa.jpeg" alt />                 </div>             </div> 
                          <div class="card">                 <div class="front">                     <img src="https://p8.itc.cn/q_70/images03/20210123/62f41a13cecc456ebd013f20435c30a6.jpeg" alt />                  </div>                 <div class="back">                     <img src="https://p6.itc.cn/q_70/images03/20210123/8245a5ca2ca04f269dfd7caa0bce9bd2.jpeg" alt />                 </div>             </div> 
                          <div class="card">                 <div class="front">                     <img src="https://p0.itc.cn/q_70/images03/20210123/af18bed6d71a418db1c1c526f2aab28c.jpeg" alt />                  </div>                 <div class="back">                     <img src="https://p7.itc.cn/q_70/images03/20210123/09255107d0dc40d8b3a7ef40283479c6.jpeg" alt />                 </div>             </div> 
                          <div class="card">                 <div class="front">                     <img src="https://p9.itc.cn/q_70/images03/20210123/562df4f55ac044fb886bc82ea229ca23.jpeg" alt />                  </div>                 <div class="back">                     <img src="https://p8.itc.cn/q_70/images03/20210123/a65560d308e74eeabc1612558f347e91.jpeg" alt />                 </div>             </div> 
                          <div class="card">                 <div class="front">                     <img src="https://p1.itc.cn/q_70/images03/20210123/7cbfb1e40b9740b886c54d6ea7312ca0.jpeg" alt />                  </div>                 <div class="back">                     <img src="https://p1.itc.cn/q_70/images03/20210123/c71ee2f14e264c9ca64b878360689ef8.jpeg" alt />                 </div>             </div> 
                          <div class="card">                 <div class="front">                     <img src="https://p3.itc.cn/q_70/images03/20210123/e78b47235f424985ba5c4cb734cb0820.jpeg" alt />                  </div>                 <div class="back">                     <img src="https://p0.itc.cn/q_70/images03/20210123/0aec028751634a53b731bb2a4183b42e.jpeg" alt />                 </div>             </div> 
                          <div class="card">                 <div class="front">                     <img src="https://p9.itc.cn/q_70/images03/20210123/8b1c14689c65466da6295ffcd0883476.jpeg" alt />                  </div>                 <div class="back">                     <img src="https://p7.itc.cn/q_70/images03/20210123/97a2481b5adc4c168330ff5a8a850836.jpeg" alt />                 </div>             </div> 
                          <div class="card">                 <div class="front">                     <img src="https://p0.itc.cn/q_70/images03/20210123/5c940815389740ee9591c1ed1311040f.jpeg" alt />                  </div>                 <div class="back">                     <img src="https://p3.itc.cn/q_70/images03/20210123/c551c8f705ce425b975c85e76de065ea.jpeg" alt />                 </div>             </div> 
                          <div class="card">                 <div class="front">                     <img src="https://p5.itc.cn/q_70/images03/20210123/ce742d7fadbf4546a81df23bed81de26.jpeg" alt />                  </div>                 <div class="back">                     <img src="https://p2.itc.cn/q_70/images03/20210123/405780c3a6814cd3a63f8f878ce5530d.jpeg" alt />                 </div>             </div> 
                          <div class="card">                 <div class="front">                     <img src="https://p1.itc.cn/q_70/images03/20210123/de306fd1ad5f484db113a5a94c6dec33.jpeg" alt />                  </div>                 <div class="back">                     <img src="https://p4.itc.cn/q_70/images03/20210123/f7f61c8f30cc4d8ca2beb814e9ea1ddb.jpeg" alt />                 </div>             </div> 
                          <div class="card">                 <div class="front">                     <img src="https://p5.itc.cn/q_70/images03/20210123/188ef07c48fd47b3b38f32b0eaa3b282.jpeg" alt />                  </div>                 <div class="back">                     <img src="https://p8.itc.cn/q_70/images03/20210123/df2d0e76364941fda699fce85bc2b933.jpeg" alt />                 </div>             </div> 
                          <div class="card">                 <div class="front">                     <img src="https://p8.itc.cn/q_70/images03/20210123/c17e52e8bfca4300b4c4e091411ad334.jpeg" alt />                  </div>                 <div class="back">                     <img src="https://p4.itc.cn/q_70/images03/20210123/4a7b1eca68784b63b9db12c5fd8d8a4c.jpeg" alt />                 </div>             </div> 
                          <div class="card">                 <div class="front">                     <img src="https://p4.itc.cn/q_70/images03/20210123/29124c89a1a9491bb6112d8837c85b81.jpeg" alt />                  </div>                 <div class="back">                     <img src="https://p2.itc.cn/q_70/images03/20210123/75f789387d1241539fc134a48b8ca4e9.jpeg" alt />                 </div>             </div> 
                          <div class="card">                 <div class="front">                     <img src="https://p8.itc.cn/q_70/images03/20210123/812a93ac70a74ed4a7d3a56d40829ce8.jpeg" alt />                  </div>                 <div class="back">                     <img src="https://p6.itc.cn/q_70/images03/20210123/0b8e0ad38db84b6b826bd6a619fe8489.jpeg" alt />                 </div>             </div> 
                          <div class="card">                 <div class="front">                     <img src="https://p1.itc.cn/q_70/images03/20210123/45411833e18c4d668a580ce34e0e5032.jpeg" alt />                  </div>                 <div class="back">                     <img src="https://p7.itc.cn/q_70/images03/20210123/4918d76b0be5479d8e62d646c2ae37c3.jpeg" alt />                 </div>             </div> 
                          <div class="card">                 <div class="front">                     <img src="https://p9.itc.cn/q_70/images03/20210123/69646a1ba0224c42afd60200e5690d87.jpeg" alt />                  </div>                 <div class="back">                     <img src="https://p3.itc.cn/q_70/images03/20210123/8b02bb54d9284dc894a9fd6f8fd095db.jpeg" alt />                 </div>             </div> 
                          <div class="card">                 <div class="front">                     <img src="https://p9.itc.cn/q_70/images03/20210123/a0ef9380d0234912b53a1f4461310c06.jpeg" alt />                  </div>                 <div class="back">                     <img src="https://p3.itc.cn/q_70/images03/20210123/28381ad6e09443b3b33265d7346feb56.jpeg" alt />                 </div>             </div> 
                          <div class="card">                 <div class="front">                     <img src="https://p6.itc.cn/q_70/images03/20210123/eab1c67b2c644d62a5131828e96aefff.jpeg" alt />                  </div>                 <div class="back">                     <img src="https://p7.itc.cn/q_70/images03/20210123/6dcfd785178d424db70338bb25fbcf37.jpeg" alt />                 </div>             </div> 
                          <div class="card">                 <div class="front">                     <img src="https://p4.itc.cn/q_70/images03/20210123/91c8c200a42a41d88ba7be234226f884.jpeg" alt />                  </div>                 <div class="back">                     <img src="https://p8.itc.cn/q_70/images03/20210123/731f3d94e9ba4f938de9a64cf7847a81.jpeg" alt />                 </div>             </div> 
                          <div class="card">                 <div class="front">                     <img src="https://p9.itc.cn/q_70/images03/20210123/76eca997c5084f0da562f839dc5f69d5.jpeg" alt />                  </div>                 <div class="back">                     <img src="https://p2.itc.cn/q_70/images03/20210123/8633eb82f4c346078b8cfc24e02f8413.jpeg" alt />                 </div>             </div> 
                          <div class="card">                 <div class="front">                     <img src="https://p5.itc.cn/q_70/images03/20210123/5a106de16d2d4450a9dd6f219cda484d.jpeg" alt />                  </div>                 <div class="back">                     <img src="https://p9.itc.cn/q_70/images03/20210123/3ece92cafdc94d18afba8f2230d1a2eb.jpeg" alt />                 </div>             </div> 
                          <div class="card">                 <div class="front">                     <img src="https://p4.itc.cn/q_70/images03/20210123/610ef5146617478592b55454a19005bc.jpeg" alt />                  </div>                 <div class="back">                     <img src="https://p7.itc.cn/q_70/images03/20210123/2a0aa4f4b3ac46ffb2aaa1070ee0a0ba.jpeg" alt />                 </div>             </div> 
                          <div class="card">                 <div class="front">                     <img src="https://p0.itc.cn/q_70/images03/20210123/efb2c492efb64dffa906be4f6e263b8e.jpeg" alt />                  </div>                 <div class="back">                     <img src="https://p6.itc.cn/q_70/images03/20210123/e53ea5802c2744a1bb627e5bb6b41589.jpeg" alt />                 </div>             </div> 
                          <div class="card">                 <div class="front">                     <img src="https://p2.itc.cn/q_70/images03/20210123/b144aed491f74610b647ea48dda9de33.jpeg" alt />                  </div>                 <div class="back">                     <img src="https://p2.itc.cn/q_70/images03/20210123/d65034ca26894080b6631b570f125de6.jpeg" alt />                 </div>             </div> 
                          <div class="card">                 <div class="front">                     <img src="https://p5.itc.cn/q_70/images03/20210123/10cf4d57879d4b0cae4711cd899725b1.jpeg" alt />                  </div>                 <div class="back">                     <img src="https://p8.itc.cn/q_70/images03/20210123/7583c8d90d164770bf03ae9510f141ae.jpeg" alt />                 </div>             </div> 
             
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
                    if(this.pageNum < this.pages-1){
                        this.runPages[this.pageNum].classList.add('left')
                        this.pageNum++;
                    }
                    break;
                case 'lastBtn':
                    if(this.pageNum>0){
                      if(this.pageNum>1){
                        let temp = parseInt(this.runPages[this.pageNum-2].style.zIndex) + 1;
                        this.runPages[this.pageNum-1].style.zIndex = 101;
                      }

                    this.pageNum--;
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
    padding: 20px;
    transform: rotateY(180deg);
    box-shadow: 0 0 30px rgba(0, 0, 0, 0.7) inset;
  }

  div.front {
    display: flex;
    justify-content: center;
    align-items: center;
    font-size: 20px;
    font-weight: bold;
    color: #032303;
    padding: 20px;
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
