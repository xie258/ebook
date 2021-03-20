<template>
  <div class="mainbody">
      <div class="group-btn" @click="flipPage">
          <a class="lastBtn">pre</a>
          <a class="nextBtn">next</a>
      </div>
    <div class="content">
                   <div class="card">                 <div class="front">                     <img src="http://p6.itc.cn/q_70/images03/20200717/2a16f3dc65bc4010a42b5c03c871ecfc.jpeg" alt />                  </div>                 <div class="back">                     <img src="http://p7.itc.cn/q_70/images03/20200717/b1c6e08089c4468bafa7edb5663a6f1f.jpeg" alt />                 </div>             </div> 
                          <div class="card">                 <div class="front">                     <img src="http://p3.itc.cn/q_70/images03/20200717/25e70b49d0b1464db88e4b26f48ad5c5.jpeg" alt />                  </div>                 <div class="back">                     <img src="http://p9.itc.cn/q_70/images03/20200717/62fb9bb469ce4fa1bfb648d57272454b.jpeg" alt />                 </div>             </div> 
                          <div class="card">                 <div class="front">                     <img src="http://p2.itc.cn/q_70/images03/20200717/a4d3a3ba7014467f801d9ae3d50cda01.jpeg" alt />                  </div>                 <div class="back">                     <img src="http://p4.itc.cn/q_70/images03/20200717/79361af4426a4a46a8b6cd05a7ff839c.jpeg" alt />                 </div>             </div> 
                          <div class="card">                 <div class="front">                     <img src="http://p8.itc.cn/q_70/images03/20200717/5e60d6974cc7425abf5c6adc84812f85.jpeg" alt />                  </div>                 <div class="back">                     <img src="http://p6.itc.cn/q_70/images03/20200717/ef41f3781c3b4eb9b7ab38ab1288b1db.jpeg" alt />                 </div>             </div> 
                          <div class="card">                 <div class="front">                     <img src="http://p0.itc.cn/q_70/images03/20200717/93dc300019d04c5caac92980077c9053.jpeg" alt />                  </div>                 <div class="back">                     <img src="http://p5.itc.cn/q_70/images03/20200717/868fb378ea7e4bdfacb7229c029ba46d.jpeg" alt />                 </div>             </div> 
                          <div class="card">                 <div class="front">                     <img src="http://p2.itc.cn/q_70/images03/20200717/85762340bb6c446095218b23b26839c1.jpeg" alt />                  </div>                 <div class="back">                     <img src="http://p3.itc.cn/q_70/images03/20200717/0bbef90aeccc445e896fd45610b29197.jpeg" alt />                 </div>             </div> 
                          <div class="card">                 <div class="front">                     <img src="http://p7.itc.cn/q_70/images03/20200717/fc188eb159514e21af561fb65a13f231.jpeg" alt />                  </div>                 <div class="back">                     <img src="http://p8.itc.cn/q_70/images03/20200717/ab5b3eb9316b40e38da87abc17710391.jpeg" alt />                 </div>             </div> 
                          <div class="card">                 <div class="front">                     <img src="http://p5.itc.cn/q_70/images03/20200717/21b975b1abb341d4ab7008d2b39074fe.jpeg" alt />                  </div>                 <div class="back">                     <img src="http://p8.itc.cn/q_70/images03/20200717/d0c21a6b8d324e8cbd9263ab9cd6304d.jpeg" alt />                 </div>             </div> 
                          <div class="card">                 <div class="front">                     <img src="http://p9.itc.cn/q_70/images03/20200717/b4fb1f7ce4ec433783dc0cb4b5321077.jpeg" alt />                  </div>                 <div class="back">                     <img src="http://p7.itc.cn/q_70/images03/20200717/b6d3c3fdecad46ff82ca9e9ece29767a.jpeg" alt />                 </div>             </div> 
                          <div class="card">                 <div class="front">                     <img src="http://p9.itc.cn/q_70/images03/20200717/add592f64e504198b0b033f602d9b9cb.jpeg" alt />                  </div>                 <div class="back">                     <img src="http://p0.itc.cn/q_70/images03/20200717/fd1926871f604363a161391eced0c3e1.jpeg" alt />                 </div>             </div> 
                          <div class="card">                 <div class="front">                     <img src="http://p8.itc.cn/q_70/images03/20200717/94953125b46e4c07994dd62c713122c7.jpeg" alt />                  </div>                 <div class="back">                     <img src="http://p2.itc.cn/q_70/images03/20200717/17973a08e78a460baa2c1923cb408fec.jpeg" alt />                 </div>             </div> 
                          <div class="card">                 <div class="front">                     <img src="http://p2.itc.cn/q_70/images03/20200717/2ec5ce53e7724697b15ea28384d4a975.jpeg" alt />                  </div>                 <div class="back">                     <img src="http://p3.itc.cn/q_70/images03/20200717/e8a72197367549d4a5a888527cfe45ff.jpeg" alt />                 </div>             </div> 
                          <div class="card">                 <div class="front">                     <img src="http://p0.itc.cn/q_70/images03/20200717/44cc5a2950b84284a3fe61e24305cbb1.jpeg" alt />                  </div>                 <div class="back">                     <img src="http://p3.itc.cn/q_70/images03/20200717/47214ca8dd6647e58443649c5ff63870.jpeg" alt />                 </div>             </div> 
                          <div class="card">                 <div class="front">                     <img src="http://p7.itc.cn/q_70/images03/20200717/4af5f2a36b944e6b8d622c59520245ad.jpeg" alt />                  </div>                 <div class="back">                     <img src="http://p9.itc.cn/q_70/images03/20200717/9509088de4444284a08723a075acb8ee.jpeg" alt />                 </div>             </div> 
                          <div class="card">                 <div class="front">                     <img src="http://p9.itc.cn/q_70/images03/20200717/1185f2ea170741a1b1acdfd007ee2ae2.jpeg" alt />                  </div>                 <div class="back">                     <img src="http://p3.itc.cn/q_70/images03/20200717/1c09d09ec0df48648eccb4ca86bf8265.jpeg" alt />                 </div>             </div> 
                          <div class="card">                 <div class="front">                     <img src="http://p9.itc.cn/q_70/images03/20200717/091b011f4fde48f9bdc27f05df23f083.jpeg" alt />                  </div>                 <div class="back">                     <img src="http://p2.itc.cn/q_70/images03/20200717/3114610d746444f981d921252ea0bc23.jpeg" alt />                 </div>             </div> 
                          <div class="card">                 <div class="front">                     <img src="http://p8.itc.cn/q_70/images03/20200717/9c1792ff7b2c495c85199abe52cbf8ba.jpeg" alt />                  </div>                 <div class="back">                     <img src="http://p4.itc.cn/q_70/images03/20200717/99a1732b683b4260827982faeaabd734.jpeg" alt />                 </div>             </div> 
                          <div class="card">                 <div class="front">                     <img src="http://p0.itc.cn/q_70/images03/20200717/c52d5392fd004edf9c6e912c200f2a71.jpeg" alt />                  </div>                 <div class="back">                     <img src="http://p9.itc.cn/q_70/images03/20200717/450b39ab81c64fb4a2aee0b31cb68e59.jpeg" alt />                 </div>             </div> 
                          <div class="card">                 <div class="front">                     <img src="http://p3.itc.cn/q_70/images03/20200717/09b43e1774de49ff886f64ccb1df03f7.jpeg" alt />                  </div>                 <div class="back">                     <img src="http://p3.itc.cn/q_70/images03/20200717/4a066dab71504f0b870b466e57576b06.jpeg" alt />                 </div>             </div> 
                          <div class="card">                 <div class="front">                     <img src="http://p5.itc.cn/q_70/images03/20200717/6fe55564ae4b47ce9a38038f5ba039ab.jpeg" alt />                  </div>                 <div class="back">                     <img src="http://p2.itc.cn/q_70/images03/20200717/7f6951f53c7d47c3b4dbe8b7be8b49d6.jpeg" alt />                 </div>             </div> 
                          <div class="card">                 <div class="front">                     <img src="http://p3.itc.cn/q_70/images03/20200717/c1004dbb77ac4904b216f4130750d82b.jpeg" alt />                  </div>                 <div class="back">                     <img src="http://p2.itc.cn/q_70/images03/20200717/a042c0869abd483389c4037b83892b75.jpeg" alt />                 </div>             </div> 
                          <div class="card">                 <div class="front">                     <img src="http://p4.itc.cn/q_70/images03/20200717/c3d213e8fa3f462a90ff90fff666012d.jpeg" alt />                  </div>                 <div class="back">                     <img src="http://p9.itc.cn/q_70/images03/20200717/c25f9f719ae44a459f927bcb102ab379.jpeg" alt />                 </div>             </div> 
                          <div class="card">                 <div class="front">                     <img src="http://p0.itc.cn/q_70/images03/20200717/bede24c2b07a497ebac667ea6f987576.jpeg" alt />                  </div>                 <div class="back">                     <img src="http://p8.itc.cn/q_70/images03/20200717/ff02e620367d435197f38f805c952cad.jpeg" alt />                 </div>             </div> 
                          <div class="card">                 <div class="front">                     <img src="http://p2.itc.cn/q_70/images03/20200717/228a57cae37a43c1a4b1fec68d1a40d7.jpeg" alt />                  </div>                 <div class="back">                     <img src="http://p1.itc.cn/q_70/images03/20200717/8bc082fab5e143f3aee39f5ae4d52ecc.jpeg" alt />                 </div>             </div> 
                          <div class="card">                 <div class="front">                     <img src="http://p3.itc.cn/q_70/images03/20200717/b042a0a93f774d978264bd570c5a28ca.jpeg" alt />                  </div>                 <div class="back">                     <img src="http://p0.itc.cn/q_70/images03/20200717/08650ae30cc54a17a332e1340c40cd7b.jpeg" alt />                 </div>             </div> 
                          <div class="card">                 <div class="front">                     <img src="http://p4.itc.cn/q_70/images03/20200717/10cbec005a8f4126aa1ddaed759940c1.jpeg" alt />                  </div>                 <div class="back">                     <img src="http://p9.itc.cn/q_70/images03/20200717/72e13edb79494c80aea069779904ac57.jpeg" alt />                 </div>             </div> 
                          <div class="card">                 <div class="front">                     <img src="http://p6.itc.cn/q_70/images03/20200717/91cec9b249a34bde8d3e1ba5346289d3.jpeg" alt />                  </div>                 <div class="back">                     <img src="http://p2.itc.cn/q_70/images03/20200717/688ac332af034996a9c12a9b7c938b8d.jpeg" alt />                 </div>             </div> 
                          <div class="card">                 <div class="front">                     <img src="http://p8.itc.cn/q_70/images03/20200717/2f9efe5aff814b808eb75f778aacfef9.jpeg" alt />                  </div>                 <div class="back">                     <img src="http://p5.itc.cn/q_70/images03/20200717/1be9a5ec3bd44ad887e2eab2bbbab2a6.jpeg" alt />                 </div>             </div> 
                          <div class="card">                 <div class="front">                     <img src="http://p5.itc.cn/q_70/images03/20200717/3ca1400c549645c1ae592e276c7304dd.jpeg" alt />                  </div>                 <div class="back">                     <img src="http://p8.itc.cn/q_70/images03/20200717/6db7baf50db9415598c8d3d81e03aef8.jpeg" alt />                 </div>             </div> 
                          <div class="card">                 <div class="front">                     <img src="http://p4.itc.cn/q_70/images03/20200717/41af5525e8f44969805efe459de34144.jpeg" alt />                  </div>                 <div class="back">                     <img src="http://p1.itc.cn/q_70/images03/20200717/4079ba65798c4121b190f6105bbe43a7.jpeg" alt />                 </div>             </div> 
                          <div class="card">                 <div class="front">                     <img src="http://p8.itc.cn/q_70/images03/20200717/8ac8bd7fcc184a94907b108fa0fc8d91.jpeg" alt />                  </div>                 <div class="back">                     <img src="http://p6.itc.cn/q_70/images03/20200717/7b2e1803ccb6403da4fff9cfabc17649.jpeg" alt />                 </div>             </div> 
                          <div class="card">                 <div class="front">                     <img src="http://p5.itc.cn/q_70/images03/20200717/ee7d0fdf4ec4472983b31f12213b4a38.jpeg" alt />                  </div>                 <div class="back">                     <img src="http://p9.itc.cn/q_70/images03/20200717/02bfd18515f448b8800a23d49a49aee4.jpeg" alt />                 </div>             </div> 
                          <div class="card">                 <div class="front">                     <img src="http://p3.itc.cn/q_70/images03/20200717/51279426cdfd441a959fa93b6321deab.jpeg" alt />                  </div>                 <div class="back">                     <img src="http://p0.itc.cn/q_70/images03/20200717/eb267f2731364d1f9b91677a9ba63cdf.jpeg" alt />                 </div>             </div> 
                          <div class="card">                 <div class="front">                     <img src="http://p8.itc.cn/q_70/images03/20200717/155d4d3f686441099eb2b3b0ae8ee388.jpeg" alt />                  </div>                 <div class="back">                     <img src="http://p0.itc.cn/q_70/images03/20200717/3210ec3f9f804993b73847f524a1e638.jpeg" alt />                 </div>             </div> 
                          <div class="card">                 <div class="front">                     <img src="http://p2.itc.cn/q_70/images03/20200717/b64e2d319db24f97be6a76bd4dad42a6.jpeg" alt />                  </div>                 <div class="back">                     <img src="http://p5.itc.cn/q_70/images03/20200717/6948f32487c342259b972a8c52086ac3.jpeg" alt />                 </div>             </div> 
                          <div class="card">                 <div class="front">                     <img src="http://p4.itc.cn/q_70/images03/20200717/289e1416207848dd8df5d21c2894036d.jpeg" alt />                  </div>                 <div class="back">                     <img src="http://p6.itc.cn/q_70/images03/20200717/3fa00c0f64c44199821e06879ae92211.jpeg" alt />                 </div>             </div> 
                          <div class="card">                 <div class="front">                     <img src="http://p4.itc.cn/q_70/images03/20200717/3493e14e9ca14be8bc8d2f29b3da71cb.jpeg" alt />                  </div>                 <div class="back">                     <img src="http://p8.itc.cn/q_70/images03/20200717/41b338845c8d400bb732a792a4b770ac.jpeg" alt />                 </div>             </div> 
                          <div class="card">                 <div class="front">                     <img src="http://p3.itc.cn/q_70/images03/20200717/275730c76b47431bb607c82d1e2b3a37.jpeg" alt />                  </div>                 <div class="back">                     <img src="http://p1.itc.cn/q_70/images03/20200717/c2c31e512cd34f34aed1034acc0d0843.jpeg" alt />                 </div>             </div> 
                          <div class="card">                 <div class="front">                     <img src="http://p2.itc.cn/q_70/images03/20200717/4f988c5bcfd3422eb99988ca109a2d72.jpeg" alt />                  </div>                 <div class="back">                     <img src="http://p6.itc.cn/q_70/images03/20200717/50b6a1d3c3544be181bcd496b56293ed.jpeg" alt />                 </div>             </div> 
                          <div class="card">                 <div class="front">                     <img src="http://p4.itc.cn/q_70/images03/20200717/30ae2b613d63475f96b0109365d0f8b6.jpeg" alt />                  </div>                 <div class="back">                     <img src="http://p5.itc.cn/q_70/images03/20200717/dbfee821b4e1497eb407158743cdef7b.jpeg" alt />                 </div>             </div> 
                          <div class="card">                 <div class="front">                     <img src="http://p2.itc.cn/q_70/images03/20200717/db33d7cc6a494f7ca7886d36afe4a3b8.jpeg" alt />                  </div>                 <div class="back">                     <img src="http://p4.itc.cn/q_70/images03/20200717/79e7818482614d9d80a62e1b0f13695b.jpeg" alt />                 </div>             </div> 
                          <div class="card">                 <div class="front">                     <img src="http://p6.itc.cn/q_70/images03/20200717/19d5eeecefbb414c836f3abbce197282.jpeg" alt />                  </div>                 <div class="back">                     <img src="http://p0.itc.cn/q_70/images03/20200717/ee031704bcc9463f8ead70231e087dbf.jpeg" alt />                 </div>             </div> 
                          <div class="card">                 <div class="front">                     <img src="http://p8.itc.cn/q_70/images03/20200717/f620c9aa410141ae99b64838b5a4ff26.jpeg" alt />                  </div>                 <div class="back">                     <img src="http://p3.itc.cn/q_70/images03/20200717/8673c662e77947f98c2e2062567e5970.jpeg" alt />                 </div>             </div> 
                          <div class="card">                 <div class="front">                     <img src="http://p1.itc.cn/q_70/images03/20200717/21b90d483c744114bff1a409243af44e.jpeg" alt />                  </div>                 <div class="back">                     <img src="http://p8.itc.cn/q_70/images03/20200717/92cbcc48738e4cc99e1fa5827ad1c7f5.jpeg" alt />                 </div>             </div> 
                          <div class="card">                 <div class="front">                     <img src="http://p7.itc.cn/q_70/images03/20200717/2d2ece4348424200bd0fa1d94629b4a5.jpeg" alt />                  </div>                 <div class="back">                     <img src="http://p8.itc.cn/q_70/images03/20200717/90926a5860024cd4ad4d090c60219f13.jpeg" alt />                 </div>             </div> 
                          <div class="card">                 <div class="front">                     <img src="http://p8.itc.cn/q_70/images03/20200717/ff828613853b455190433281abdf85c1.jpeg" alt />                  </div>                 <div class="back">                     <img src="http://p5.itc.cn/q_70/images03/20200717/98cf56ebd57e4c9a9305cdaaa4d2a657.jpeg" alt />                 </div>             </div> 
                          <div class="card">                 <div class="front">                     <img src="http://p7.itc.cn/q_70/images03/20200717/3aeefe05776e4b258f245675f4f621a3.jpeg" alt />                  </div>                 <div class="back">                     <img src="http://p6.itc.cn/q_70/images03/20200717/27347c769d614a66b6267dd43363e3c9.jpeg" alt />                 </div>             </div> 
                          <div class="card">                 <div class="front">                     <img src="http://p1.itc.cn/q_70/images03/20200717/7950f407d5da4028959ca6a10bb47e24.jpeg" alt />                  </div>                 <div class="back">                     <img src="http://p5.itc.cn/q_70/images03/20200717/59ca2c6c393948868a65c75f9221d8b7.jpeg" alt />                 </div>             </div> 
                          <div class="card">                 <div class="front">                     <img src="http://p9.itc.cn/q_70/images03/20200717/0a61c3fa4636489084f090ee02efef32.jpeg" alt />                  </div>                 <div class="back">                     <img src="http://p3.itc.cn/q_70/images03/20200717/b02372c7387d4a6aa632c63fb646faba.jpeg" alt />                 </div>             </div> 
                          <div class="card">                 <div class="front">                     <img src="http://p4.itc.cn/q_70/images03/20200717/ef0bab2c99974905bc1e824a07397f8e.jpeg" alt />                  </div>                 <div class="back">                     <img src="http://p1.itc.cn/q_70/images03/20200717/d351871610014b3985af40c9321ea35f.jpeg" alt />                 </div>             </div> 
                          <div class="card">                 <div class="front">                     <img src="http://p0.itc.cn/q_70/images03/20200717/28f436bd1bb442839b46e05861f582a9.jpeg" alt />                  </div>                 <div class="back">                     <img src="http://p1.itc.cn/q_70/images03/20200717/0ca9bb5c23364905ac12409be5460f78.jpeg" alt />                 </div>             </div> 
                          <div class="card">                 <div class="front">                     <img src="http://p7.itc.cn/q_70/images03/20200717/664ad3be40db40e5b2109eef46b695ec.jpeg" alt />                  </div>                 <div class="back">                     <img src="http://p1.itc.cn/q_70/images03/20200717/2c73ed52ca6f48c7bc06ebaabda6e9ae.jpeg" alt />                 </div>             </div> 
                          <div class="card">                 <div class="front">                     <img src="http://p4.itc.cn/q_70/images03/20200717/0e05cbdd67b74ac9b761abd4e50087e3.jpeg" alt />                  </div>                 <div class="back">                     <img src="http://p7.itc.cn/q_70/images03/20200717/6d756fdc75994e65b7b07bdba1f4c379.jpeg" alt />                 </div>             </div> 
                          <div class="card">                 <div class="front">                     <img src="http://p1.itc.cn/q_70/images03/20200717/5ec8cc8b91864522913612e42247f518.jpeg" alt />                  </div>                 <div class="back">                     <img src="http://p4.itc.cn/q_70/images03/20200717/c1f240e2e6cb44fdb9b8543e5314562c.jpeg" alt />                 </div>             </div> 
                          <div class="card">                 <div class="front">                     <img src="http://p0.itc.cn/q_70/images03/20200717/cef6974dafdc4ec9a5af9478f28fe59f.jpeg" alt />                  </div>                 <div class="back">                     <img src="http://p6.itc.cn/q_70/images03/20200717/09d5e424c5704e0bb45e077c143f96fe.jpeg" alt />                 </div>             </div> 
                          <div class="card">                 <div class="front">                     <img src="http://p0.itc.cn/q_70/images03/20200717/0c181522a51d46a1a93e2f798b1c7958.jpeg" alt />                  </div>                 <div class="back">                     <img src="http://p4.itc.cn/q_70/images03/20200717/6c7961f363424702b6b614a3082dc130.jpeg" alt />                 </div>             </div> 
                          <div class="card">                 <div class="front">                     <img src="http://p7.itc.cn/q_70/images03/20200717/354a9f403b1c472ab5f869e4a2da73b2.jpeg" alt />                  </div>                 <div class="back">                     <img src="http://p1.itc.cn/q_70/images03/20200717/4246a2a4e380402a8b3fa18f03227da8.jpeg" alt />                 </div>             </div> 
                          <div class="card">                 <div class="front">                     <img src="http://p4.itc.cn/q_70/images03/20200717/b342eb714a9e4a35a641567dbb3e02f9.jpeg" alt />                  </div>                 <div class="back">                     <img src="http://p1.itc.cn/q_70/images03/20200717/bd36be73a66c4f3681a32d9e86a93bfb.jpeg" alt />                 </div>             </div> 
                          <div class="card">                 <div class="front">                     <img src="http://p7.itc.cn/q_70/images03/20200717/3219d791c538400b83754f2937d9f1e6.jpeg" alt />                  </div>                 <div class="back">                     <img src="http://p6.itc.cn/q_70/images03/20200717/c1950ccacd82419d89473b01715f3843.jpeg" alt />                 </div>             </div> 
                          <div class="card">                 <div class="front">                     <img src="http://p1.itc.cn/q_70/images03/20200717/c66fdefb2fa8417085064c1a7c97b650.jpeg" alt />                  </div>                 <div class="back">                     <img src="http://p7.itc.cn/q_70/images03/20200717/6ecb6c4fab654d53a26656e570f2ce39.jpeg" alt />                 </div>             </div> 
                          <div class="card">                 <div class="front">                     <img src="http://p4.itc.cn/q_70/images03/20200717/0b75c1e425ad49758d7b6eadd18c538b.jpeg" alt />                  </div>                 <div class="back">                     <img src="http://p8.itc.cn/q_70/images03/20200717/5927ad1a52994f579c0354378e425afd.jpeg" alt />                 </div>             </div> 
                          <div class="card">                 <div class="front">                     <img src="http://p2.itc.cn/q_70/images03/20200717/f83f4c79de8e45189fdb7791a649e9eb.jpeg" alt />                  </div>                 <div class="back">                     <img src="http://p7.itc.cn/q_70/images03/20200717/b92f83e524ca4c1c942d443fb67e6e63.jpeg" alt />                 </div>             </div> 
                          <div class="card">                 <div class="front">                     <img src="http://p4.itc.cn/q_70/images03/20200717/60ec5061bd4449d5b924b44dcba3c6a1.jpeg" alt />                  </div>                 <div class="back">                     <img src="http://p0.itc.cn/q_70/images03/20200717/0f3d8a51352447ccab337964c39accb1.jpeg" alt />                 </div>             </div> 
                          <div class="card">                 <div class="front">                     <img src="http://p5.itc.cn/q_70/images03/20200717/c6b64ca992f74dd5830c6c3fbd69496e.jpeg" alt />                  </div>                 <div class="back">                     <img src="http://p7.itc.cn/q_70/images03/20200717/12de644e5bc147e2bb91f4087be797b3.jpeg" alt />                 </div>             </div> 
                          <div class="card">                 <div class="front">                     <img src="http://p4.itc.cn/q_70/images03/20200717/cab04c6108c34ed592b36465c8b67897.jpeg" alt />                  </div>                 <div class="back">                     <img src="http://p9.itc.cn/q_70/images03/20200717/af0f4723b70049879723aab7d5a1b56e.jpeg" alt />                 </div>             </div> 
                          <div class="card">                 <div class="front">                     <img src="http://p1.itc.cn/q_70/images03/20200717/332c101e7078421cb37cd5e84f7366b5.jpeg" alt />                  </div>                 <div class="back">                     <img src="http://p0.itc.cn/q_70/images03/20200717/01c8f1f879ce4beab2a2c8a0d05accda.jpeg" alt />                 </div>             </div> 
                          <div class="card">                 <div class="front">                     <img src="http://p6.itc.cn/q_70/images03/20200717/0a95e5a28df741a9b7e2199df6daf37d.jpeg" alt />                  </div>                 <div class="back">                     <img src="http://p7.itc.cn/q_70/images03/20200717/eaa50d38840540f99d5829c65a1517af.jpeg" alt />                 </div>             </div> 
                          <div class="card">                 <div class="front">                     <img src="http://p9.itc.cn/q_70/images03/20200717/d3fcacdbb6ca4f3dadbea6b90727a446.jpeg" alt />                  </div>                 <div class="back">                     <img src="http://p9.itc.cn/q_70/images03/20200717/5c2d2397305d4c4191ab2410ee57003b.jpeg" alt />                 </div>             </div> 
                          <div class="card">                 <div class="front">                     <img src="http://p5.itc.cn/q_70/images03/20200717/add50138ea89461eb7f11323a1b9e0c0.jpeg" alt />                  </div>                 <div class="back">                     <img src="http://p1.itc.cn/q_70/images03/20200717/0a01017459344d438d760fb6f138799d.jpeg" alt />                 </div>             </div> 
                          <div class="card">                 <div class="front">                     <img src="http://p8.itc.cn/q_70/images03/20200717/7478bd7a9ea84759b4c1a78889cf7af1.jpeg" alt />                  </div>                 <div class="back">                     <img src="http://p5.itc.cn/q_70/images03/20200717/d48e6ff6dbfc4ef99f952a73fd2754ad.jpeg" alt />                 </div>             </div> 
                          <div class="card">                 <div class="front">                     <img src="http://p4.itc.cn/q_70/images03/20200717/f773d7d3af204d2e87fe4056d6595943.jpeg" alt />                  </div>                 <div class="back">                     <img src="http://p4.itc.cn/q_70/images03/20200717/43bd05911c7445aaa3719b7811ad7179.jpeg" alt />                 </div>             </div> 
                          <div class="card">                 <div class="front">                     <img src="http://p8.itc.cn/q_70/images03/20200717/1a6a10d02f0a43bbadc621ac0ca6120d.jpeg" alt />                  </div>                 <div class="back">                     <img src="http://p5.itc.cn/q_70/images03/20200717/869165014eed4a589e377a722855ab48.jpeg" alt />                 </div>             </div> 
                          <div class="card">                 <div class="front">                     <img src="http://p1.itc.cn/q_70/images03/20200717/28bc1a6135054a128353d104affee887.jpeg" alt />                  </div>                 <div class="back">                     <img src="http://p2.itc.cn/q_70/images03/20200717/7922c79f015c4022add4bb12a6360d06.jpeg" alt />                 </div>             </div> 
                          <div class="card">                 <div class="front">                     <img src="http://p2.itc.cn/q_70/images03/20200717/0cf1206c44de4a729834a24c67ebd323.jpeg" alt />                  </div>                 <div class="back">                     <img src="http://p0.itc.cn/q_70/images03/20200717/4945f19862a84632a05ace33997a593e.jpeg" alt />                 </div>             </div> 
                          <div class="card">                 <div class="front">                     <img src="http://p2.itc.cn/q_70/images03/20200717/7ac72eb7875d421fa7f07708b2b90b2d.jpeg" alt />                  </div>                 <div class="back">                     <img src="http://p3.itc.cn/q_70/images03/20200717/1dc980d74a1c4eeea3fe19464c289f3f.jpeg" alt />                 </div>             </div> 
                          <div class="card">                 <div class="front">                     <img src="http://p6.itc.cn/q_70/images03/20200717/89014a6efefe4a4cbf9eae6a4dbd834e.jpeg" alt />                  </div>                 <div class="back">                     <img src="http://p4.itc.cn/q_70/images03/20200717/2b78240a2a02462693708f5a4dd10838.jpeg" alt />                 </div>             </div> 
             
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
    // box-shadow: 0 0 30px rgba(0, 0, 0, 0.7) inset;
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
