<template>
  <div class="mainbody">
      <div class="group-btn" @click="flipPage">
          <a class="lastBtn">pre</a>
          <a class="nextBtn">next</a>
      </div>
    <div class="content">
                               <div class="card">                 <div class="front">                     <img src="http://p2.itc.cn/q_70/images03/20210102/675bdee8e32c4b668bf7df442f28e7a7.jpeg" alt />                  </div>                 <div class="back">                     <img src="http://p0.itc.cn/q_70/images03/20210102/d29fc1a67fcb4066acdf75eabd82fef1.jpeg" alt />                 </div>             </div> 
                          <div class="card">                 <div class="front">                     <img src="http://p4.itc.cn/q_70/images03/20210102/b352400594244327b2481d2f4b5ff244.jpeg" alt />                  </div>                 <div class="back">                     <img src="http://p3.itc.cn/q_70/images03/20210102/ce525713be394754bea1561831b9c8a6.jpeg" alt />                 </div>             </div> 
                          <div class="card">                 <div class="front">                     <img src="http://p3.itc.cn/q_70/images03/20210102/89684d00967c41798502810f00c0a17b.jpeg" alt />                  </div>                 <div class="back">                     <img src="http://p8.itc.cn/q_70/images03/20210102/d51b1ff8c95c429ba18797f7480c4c23.jpeg" alt />                 </div>             </div> 
                          <div class="card">                 <div class="front">                     <img src="http://p7.itc.cn/q_70/images03/20210102/a32d231c93f8461aafd3c90eb36a2bde.jpeg" alt />                  </div>                 <div class="back">                     <img src="http://p8.itc.cn/q_70/images03/20210102/384686d1d8cf4a5cb25f2d8578806261.jpeg" alt />                 </div>             </div> 
                          <div class="card">                 <div class="front">                     <img src="http://p7.itc.cn/q_70/images03/20210102/22881021af8e4c0cb8f1fe1b6378ae7d.jpeg" alt />                  </div>                 <div class="back">                     <img src="http://p3.itc.cn/q_70/images03/20210102/42934a3477394ac4a52bffd78d77d3cc.jpeg" alt />                 </div>             </div> 
                          <div class="card">                 <div class="front">                     <img src="http://p2.itc.cn/q_70/images03/20210102/ec9bda1d41b64e96a5d5f2e56d0d9db6.jpeg" alt />                  </div>                 <div class="back">                     <img src="http://p9.itc.cn/q_70/images03/20210102/9e1a7c56ff3c4c41a01d5a4948a8a00a.jpeg" alt />                 </div>             </div> 
                          <div class="card">                 <div class="front">                     <img src="http://p3.itc.cn/q_70/images03/20210102/04b6939c61ce4879a5489dff8a7114a0.jpeg" alt />                  </div>                 <div class="back">                     <img src="http://p3.itc.cn/q_70/images03/20210102/59210dd0f0c2484c9ef2f11f449cd5c9.jpeg" alt />                 </div>             </div> 
                          <div class="card">                 <div class="front">                     <img src="http://p1.itc.cn/q_70/images03/20210102/8845084d638c48148af2d81083a9db5c.jpeg" alt />                  </div>                 <div class="back">                     <img src="http://p1.itc.cn/q_70/images03/20210102/e1e31885132f42abb63288219f457e73.jpeg" alt />                 </div>             </div> 
                          <div class="card">                 <div class="front">                     <img src="http://p4.itc.cn/q_70/images03/20210102/05beee6ea24241bd81c5e89f51c9f01f.jpeg" alt />                  </div>                 <div class="back">                     <img src="http://p9.itc.cn/q_70/images03/20210102/872bb9471e5a46e2b783d4271640a71c.jpeg" alt />                 </div>             </div> 
                          <div class="card">                 <div class="front">                     <img src="http://p6.itc.cn/q_70/images03/20210102/8648a2e77aa74ee5985b104c65d8bba0.jpeg" alt />                  </div>                 <div class="back">                     <img src="http://p3.itc.cn/q_70/images03/20210102/5756bd5354e74e79b99863c3678af493.jpeg" alt />                 </div>             </div> 
                          <div class="card">                 <div class="front">                     <img src="http://p9.itc.cn/q_70/images03/20210102/98433a727d1b491e842779e3d6ffd589.jpeg" alt />                  </div>                 <div class="back">                     <img src="http://p9.itc.cn/q_70/images03/20210102/51e29f7bf662495eabbabc716827fd93.jpeg" alt />                 </div>             </div> 
                          <div class="card">                 <div class="front">                     <img src="http://p7.itc.cn/q_70/images03/20210102/672e1e18f3fc49de823ce3f806ada05b.jpeg" alt />                  </div>                 <div class="back">                     <img src="http://p8.itc.cn/q_70/images03/20210102/1d418443005049dd94255f731a38191e.jpeg" alt />                 </div>             </div> 
                          <div class="card">                 <div class="front">                     <img src="http://p6.itc.cn/q_70/images03/20210102/74f73574afb44472a4f5f80048bde9a6.jpeg" alt />                  </div>                 <div class="back">                     <img src="http://p4.itc.cn/q_70/images03/20210102/5fb4da025cf946cb9db8d6dab48f3f50.jpeg" alt />                 </div>             </div> 
                          <div class="card">                 <div class="front">                     <img src="//p4.itc.cn/q_70/images03/20210102/3db75f0fc5bb42d68ab00184ae49e797.jpeg" alt />                  </div>                 <div class="back">                     <img src="http://p7.itc.cn/q_70/images03/20210102/dd18463e01df45a9af1a1fbef0af35f6.jpeg" alt />                 </div>             </div> 
                          <div class="card">                 <div class="front">                     <img src="http://p3.itc.cn/q_70/images03/20210102/54b10fefe71143409af8e04b0dc0652f.jpeg" alt />                  </div>                 <div class="back">                     <img src="http://p4.itc.cn/q_70/images03/20210102/b149fe3ae80e4f808e4ff79a5ad69915.jpeg" alt />                 </div>             </div> 
                          <div class="card">                 <div class="front">                     <img src="http://p8.itc.cn/q_70/images03/20210102/9104cbde32bd4699bd42bd585304db6c.jpeg" alt />                  </div>                 <div class="back">                     <img src="http://p1.itc.cn/q_70/images03/20210102/c8ea888f81034f23a3632b7efbefdb3b.jpeg" alt />                 </div>             </div> 
                          <div class="card">                 <div class="front">                     <img src="http://p5.itc.cn/q_70/images03/20210102/2f253f14a3194248a2966e29738e6c34.jpeg" alt />                  </div>                 <div class="back">                     <img src="http://p6.itc.cn/q_70/images03/20210102/8eaa393380d34bb9a7ab1a57d8adee6e.jpeg" alt />                 </div>             </div> 
                          <div class="card">                 <div class="front">                     <img src="http://p2.itc.cn/q_70/images03/20210102/ee0d75cb0dfe4db0b2b63f722764a6fb.jpeg" alt />                  </div>                 <div class="back">                     <img src="http://p8.itc.cn/q_70/images03/20210102/73927aa810844d5987b26a3f4630ff52.jpeg" alt />                 </div>             </div> 
                          <div class="card">                 <div class="front">                     <img src="http://p3.itc.cn/q_70/images03/20210102/8f609ed89b5741559c814a4df844ae05.jpeg" alt />                  </div>                 <div class="back">                     <img src="http://p9.itc.cn/q_70/images03/20210102/c0a747fbf708404189519322c93b88dd.jpeg" alt />                 </div>             </div> 
                          <div class="card">                 <div class="front">                     <img src="http://p1.itc.cn/q_70/images03/20210102/70803fc40dfb4b958493f61323613e69.jpeg" alt />                  </div>                 <div class="back">                     <img src="http://p9.itc.cn/q_70/images03/20210102/6344a28df2fa44a4915289f1ea2ea5ac.jpeg" alt />                 </div>             </div> 
                          <div class="card">                 <div class="front">                     <img src="http://p5.itc.cn/q_70/images03/20210102/6d00ea60b30f46e3a98dfa7675b88f57.jpeg" alt />                  </div>                 <div class="back">                     <img src="http://p4.itc.cn/q_70/images03/20210102/77463b1205ac436fbd93507548359670.jpeg" alt />                 </div>             </div> 
                          <div class="card">                 <div class="front">                     <img src="http://p2.itc.cn/q_70/images03/20210102/97bf8f2b484345a6a470a3d10ea2f308.jpeg" alt />                  </div>                 <div class="back">                     <img src="http://p9.itc.cn/q_70/images03/20210102/61c57435c49548debb834c36a103a62e.jpeg" alt />                 </div>             </div> 
                          <div class="card">                 <div class="front">                     <img src="http://p4.itc.cn/q_70/images03/20210102/2c57aadef7274a8c87feea419efa202e.jpeg" alt />                  </div>                 <div class="back">                     <img src="//p1.itc.cn/q_70/images03/20210102/4dade86e39a04f838433255199005f2b.jpeg" alt />                 </div>             </div> 
                          <div class="card">                 <div class="front">                     <img src="http://p1.itc.cn/q_70/images03/20210102/cda4a7c0985240c1895cc6f410a0e375.jpeg" alt />                  </div>                 <div class="back">                     <img src="http://p6.itc.cn/q_70/images03/20210102/fc7da585ab644deeb8f9350480486cc6.jpeg" alt />                 </div>             </div> 
                          <div class="card">                 <div class="front">                     <img src="http://p9.itc.cn/q_70/images03/20210102/b53c57da40a3450c836545fca5db6f2f.jpeg" alt />                  </div>                 <div class="back">                     <img src="http://p7.itc.cn/q_70/images03/20210102/ba575538154242b69443e3304c59c051.jpeg" alt />                 </div>             </div> 
                          <div class="card">                 <div class="front">                     <img src="http://p7.itc.cn/q_70/images03/20210102/6807bc4fcd0346ecac5c2da98fd3f0c3.jpeg" alt />                  </div>                 <div class="back">                     <img src="http://p5.itc.cn/q_70/images03/20210102/494643c9ec184c7bb9f36cf85dcda754.jpeg" alt />                 </div>             </div> 
                          <div class="card">                 <div class="front">                     <img src="http://p8.itc.cn/q_70/images03/20210102/6393f3697a734aac804d709540fbac11.jpeg" alt />                  </div>                 <div class="back">                     <img src="http://p1.itc.cn/q_70/images03/20210102/7b56625d9158472e8e8c4ff01a96de66.jpeg" alt />                 </div>             </div> 
                          <div class="card">                 <div class="front">                     <img src="http://p4.itc.cn/q_70/images03/20210102/bb29a851978242ca80db40d660d44cc1.jpeg" alt />                  </div>                 <div class="back">                     <img src="http://p0.itc.cn/q_70/images03/20210102/4747fbc21fe24a5aaf2296d6460ddafe.jpeg" alt />                 </div>             </div> 
                          <div class="card">                 <div class="front">                     <img src="http://p1.itc.cn/q_70/images03/20210102/53d76aa49c9f462fac25ddaeb6203c1d.jpeg" alt />                  </div>                 <div class="back">                     <img src="http://p2.itc.cn/q_70/images03/20210102/a28836b357a24426b9caaf6f38a26e58.jpeg" alt />                 </div>             </div> 
                          <div class="card">                 <div class="front">                     <img src="http://p7.itc.cn/q_70/images03/20210102/45dc218a29244aad9f4f1242ed7676ea.jpeg" alt />                  </div>                 <div class="back">                     <img src="http://p0.itc.cn/q_70/images03/20210102/3835112114cb4fb08ff0157da9dba615.jpeg" alt />                 </div>             </div> 
                          <div class="card">                 <div class="front">                     <img src="http://p7.itc.cn/q_70/images03/20210102/66d6575f1aad4b5d9ae233dd5db72470.jpeg" alt />                  </div>                 <div class="back">                     <img src="http://p0.itc.cn/q_70/images03/20210102/86bd6ef38c954070b21906fe7654895e.jpeg" alt />                 </div>             </div> 
                          <div class="card">                 <div class="front">                     <img src="http://p6.itc.cn/q_70/images03/20210102/8a63412c1b1c4a43bd24ca283f199027.jpeg" alt />                  </div>                 <div class="back">                     <img src="http://p6.itc.cn/q_70/images03/20210102/05db376d8aff4071981db39d8e7a0bb7.jpeg" alt />                 </div>             </div> 
                          <div class="card">                 <div class="front">                     <img src="http://p4.itc.cn/q_70/images03/20210102/c95a4b78089040009769171a0f504551.jpeg" alt />                  </div>                 <div class="back">                     <img src="http://p5.itc.cn/q_70/images03/20210102/1d795ea42e524546a0ad7562ab98cd86.jpeg" alt />                 </div>             </div> 
                          <div class="card">                 <div class="front">                     <img src="http://p4.itc.cn/q_70/images03/20210102/3648169a34fd4e81b49b56cf4435f7b1.jpeg" alt />                  </div>                 <div class="back">                     <img src="//p8.itc.cn/q_70/images03/20210102/7f7cd094b2a643aaa33bf4822230afa7.jpeg" alt />                 </div>             </div> 
                          <div class="card">                 <div class="front">                     <img src="http://p1.itc.cn/q_70/images03/20210102/556b20a6fba14189b7c1cd651438daa1.jpeg" alt />                  </div>                 <div class="back">                     <img src="http://p4.itc.cn/q_70/images03/20210102/3fe5a688c3a74353943ca5ba62cb3646.jpeg" alt />                 </div>             </div> 
                          <div class="card">                 <div class="front">                     <img src="http://p1.itc.cn/q_70/images03/20210102/6e27a36fe4394e63b43a1b00d85d9890.jpeg" alt />                  </div>                 <div class="back">                     <img src="http://p4.itc.cn/q_70/images03/20210102/3fc75aba9764456fa6df381252afd102.jpeg" alt />                 </div>             </div> 
                          <div class="card">                 <div class="front">                     <img src="http://p5.itc.cn/q_70/images03/20210102/7fcd0ebcc99b4af8bbf019e7e8b46401.jpeg" alt />                  </div>                 <div class="back">                     <img src="http://p6.itc.cn/q_70/images03/20210102/70891e14c2264f0c90aa676a42045f01.jpeg" alt />                 </div>             </div> 
                          <div class="card">                 <div class="front">                     <img src="http://p3.itc.cn/q_70/images03/20210102/8ae7b82ae22a4946a1622a79c32908a1.jpeg" alt />                  </div>                 <div class="back">                     <img src="http://p5.itc.cn/q_70/images03/20210102/3106e02ade114844972f1ad9940df5f0.jpeg" alt />                 </div>             </div> 
                          <div class="card">                 <div class="front">                     <img src="http://p5.itc.cn/q_70/images03/20210102/5ddb8b7c435c4a35ae566c1f8cabffab.jpeg" alt />                  </div>                 <div class="back">                     <img src="http://p5.itc.cn/q_70/images03/20210102/bd98f3d9499b4687974d5ce4ba395f3f.jpeg" alt />                 </div>             </div> 
                          <div class="card">                 <div class="front">                     <img src="http://p4.itc.cn/q_70/images03/20210102/b950664aee8d4b06ab7f8a5e1ed88d38.jpeg" alt />                  </div>                 <div class="back">                     <img src="http://p0.itc.cn/q_70/images03/20210102/f27661595e1f461da3376116f4d5e7a0.jpeg" alt />                 </div>             </div> 
                          <div class="card">                 <div class="front">                     <img src="http://p7.itc.cn/q_70/images03/20210102/48baa48dbaa6415680df2dc4528be03b.jpeg" alt />                  </div>                 <div class="back">                     <img src="http://p3.itc.cn/q_70/images03/20210102/47774b1d37864e63bdb4b9ae2112776c.jpeg" alt />                 </div>             </div> 
                          <div class="card">                 <div class="front">                     <img src="http://p2.itc.cn/q_70/images03/20210102/bc523beba7674291b6f997a04876563b.jpeg" alt />                  </div>                 <div class="back">                     <img src="http://p7.itc.cn/q_70/images03/20210102/4a157fb6119c41cfa6ad9486beae816e.jpeg" alt />                 </div>             </div> 
                          <div class="card">                 <div class="front">                     <img src="http://p5.itc.cn/q_70/images03/20210102/3aebafb0fb7c4a4199547d6ebbe32cbd.jpeg" alt />                  </div>                 <div class="back">                     <img src="http://p7.itc.cn/q_70/images03/20210102/f266dda299734258a25ce7f9031cf385.jpeg" alt />                 </div>             </div> 
                          <div class="card">                 <div class="front">                     <img src="http://p1.itc.cn/q_70/images03/20210102/5914842966ad47589e111d20086be524.jpeg" alt />                  </div>                 <div class="back">                     <img src="http://p6.itc.cn/q_70/images03/20210102/0679993fb19b455ea85e70029b403c95.jpeg" alt />                 </div>             </div> 
                          <div class="card">                 <div class="front">                     <img src="http://p3.itc.cn/q_70/images03/20210102/d853971af69b4a5680442bef08f4bc61.jpeg" alt />                  </div>                 <div class="back">                     <img src="http://p5.itc.cn/q_70/images03/20210102/8603a3fd00574fc99958d73f7be854a0.jpeg" alt />                 </div>             </div> 
                          <div class="card">                 <div class="front">                     <img src="http://p9.itc.cn/q_70/images03/20210102/c0bbd4296f4c452eb8bde78194feaead.jpeg" alt />                  </div>                 <div class="back">                     <img src="http://p1.itc.cn/q_70/images03/20210102/d20888c6bea243a892bf5c732ee35798.jpeg" alt />                 </div>             </div> 
                          <div class="card">                 <div class="front">                     <img src="http://p1.itc.cn/q_70/images03/20210102/db18cea70ca54bad927c41cbe1a54cfc.jpeg" alt />                  </div>                 <div class="back">                     <img src="http://p9.itc.cn/q_70/images03/20210102/318bb96fec2a4d03aa406163f878076b.jpeg" alt />                 </div>             </div> 
                          <div class="card">                 <div class="front">                     <img src="http://p5.itc.cn/q_70/images03/20210102/bf3c71eefcb74435943e63369e1d41d7.jpeg" alt />                  </div>                 <div class="back">                     <img src="http://p0.itc.cn/q_70/images03/20210102/0c792410b94d47b2b2f7b9b40ed048f5.jpeg" alt />                 </div>             </div> 
                          <div class="card">                 <div class="front">                     <img src="http://p9.itc.cn/q_70/images03/20210102/211952b7a6644e2983134a6a879e4390.jpeg" alt />                  </div>                 <div class="back">                     <img src="http://p9.itc.cn/q_70/images03/20210102/876703a28747455fa8be0dd4ffa09191.jpeg" alt />                 </div>             </div> 
                          <div class="card">                 <div class="front">                     <img src="http://p5.itc.cn/q_70/images03/20210102/995ea9de9db3420f84e55cbc3bc032d4.jpeg" alt />                  </div>                 <div class="back">                     <img src="http://p9.itc.cn/q_70/images03/20210102/63871e277b1f48c08dffc33a4f6f5739.jpeg" alt />                 </div>             </div> 
                          <div class="card">                 <div class="front">                     <img src="http://p9.itc.cn/q_70/images03/20210102/48d0683bce6d420c95e1cc796bccde85.jpeg" alt />                  </div>                 <div class="back">                     <img src="http://p2.itc.cn/q_70/images03/20210102/1d44590ea37c4e3d9a669401a07f29c9.jpeg" alt />                 </div>             </div> 
                          <div class="card">                 <div class="front">                     <img src="http://p0.itc.cn/q_70/images03/20210102/186320f5963d47e39b50f054efa04389.jpeg" alt />                  </div>                 <div class="back">                     <img src="http://p1.itc.cn/q_70/images03/20210102/74694965607548a087b10b06714c1d62.jpeg" alt />                 </div>             </div> 
                          <div class="card">                 <div class="front">                     <img src="http://p8.itc.cn/q_70/images03/20210102/89242d9c5d734e6ca37ffa2270078e3e.jpeg" alt />                  </div>                 <div class="back">                     <img src="http://p2.itc.cn/q_70/images03/20210102/2081985bc2f94a448c7435df0c2e5218.jpeg" alt />                 </div>             </div> 
                          <div class="card">                 <div class="front">                     <img src="http://p4.itc.cn/q_70/images03/20210102/d46148829d2e49af881f51362809775b.jpeg" alt />                  </div>                 <div class="back">                     <img src="http://p3.itc.cn/q_70/images03/20210102/42dc5b8403ec42d88c82ee27dfade3e9.jpeg" alt />                 </div>             </div> 
                          <div class="card">                 <div class="front">                     <img src="http://p9.itc.cn/q_70/images03/20210102/1fb80321a18e48e587c9333edfccbc1c.jpeg" alt />                  </div>                 <div class="back">                     <img src="http://p3.itc.cn/q_70/images03/20210102/dbd2631d3afa4acb879b5d977901768a.jpeg" alt />                 </div>             </div> 
                          <div class="card">                 <div class="front">                     <img src="http://p4.itc.cn/q_70/images03/20210102/91a5dabbead44b98a11a8f06dfeae098.jpeg" alt />                  </div>                 <div class="back">                     <img src="http://p5.itc.cn/q_70/images03/20210102/5c7208ea8b44453caf9a7d4a697caf6f.jpeg" alt />                 </div>             </div> 
                          <div class="card">                 <div class="front">                     <img src="http://p9.itc.cn/q_70/images03/20210102/d997f2511e9343328659ab35e9ca5779.jpeg" alt />                  </div>                 <div class="back">                     <img src="http://p0.itc.cn/q_70/images03/20210102/f5c7bed583484799838ca802ad39d8fd.jpeg" alt />                 </div>             </div> 
                          <div class="card">                 <div class="front">                     <img src="http://p9.itc.cn/q_70/images03/20210102/544dcf6d27854dfeb4fdea53b7a4de14.jpeg" alt />                  </div>                 <div class="back">                     <img src="http://p9.itc.cn/q_70/images03/20210102/06646048e0964564b1bee5d1968d6bec.jpeg" alt />                 </div>             </div> 
                          <div class="card">                 <div class="front">                     <img src="http://p6.itc.cn/q_70/images03/20210102/7e103edf8de4455186ad9bf23c64a769.jpeg" alt />                  </div>                 <div class="back">                     <img src="http://p6.itc.cn/q_70/images03/20210102/59823e065e814f6c96bd1647cf4ce4c0.jpeg" alt />                 </div>             </div> 
                          <div class="card">                 <div class="front">                     <img src="http://p7.itc.cn/q_70/images03/20210102/8496ca8908584a4fa4c31404558a383f.jpeg" alt />                  </div>                 <div class="back">                     <img src="http://p4.itc.cn/q_70/images03/20210102/f0aca985f8b8459ca83bc09d1df3cfbb.jpeg" alt />                 </div>             </div> 
                          <div class="card">                 <div class="front">                     <img src="http://p1.itc.cn/q_70/images03/20210102/33901f007f8b41bb8f461454c8c3f3be.jpeg" alt />                  </div>                 <div class="back">                     <img src="http://p1.itc.cn/q_70/images03/20210102/79d28edcae3f41f684265c35c9ecc231.jpeg" alt />                 </div>             </div> 
                          <div class="card">                 <div class="front">                     <img src="http://p8.itc.cn/q_70/images03/20210102/9dce7304c1204dfd992a61a8ab242e9c.jpeg" alt />                  </div>                 <div class="back">                     <img src="http://p7.itc.cn/q_70/images03/20210102/37d877cbe2ea4cb2beedc314cb1be9ac.jpeg" alt />                 </div>             </div> 
                          <div class="card">                 <div class="front">                     <img src="http://p3.itc.cn/q_70/images03/20210102/57b46ed0c15c47feb575b82153438bd7.jpeg" alt />                  </div>                 <div class="back">                     <img src="http://p3.itc.cn/q_70/images03/20210102/16288eb091dd456e9012ecde73713df1.jpeg" alt />                 </div>             </div> 
                          <div class="card">                 <div class="front">                     <img src="http://p3.itc.cn/q_70/images03/20210102/5987ed530a3841de88664ae183a0d51d.jpeg" alt />                  </div>                 <div class="back">                     <img src="http://p1.itc.cn/q_70/images03/20210102/788f424d4fce4125ba11e96f6b1ce8f5.jpeg" alt />                 </div>             </div> 
                          <div class="card">                 <div class="front">                     <img src="http://p0.itc.cn/q_70/images03/20210102/c2d74c0e46704fa5a051eb2c82d8643a.jpeg" alt />                  </div>                 <div class="back">                     <img src="http://p9.itc.cn/q_70/images03/20210102/304c7888d575414695299a1f0d1fe16c.jpeg" alt />                 </div>             </div> 
                          <div class="card">                 <div class="front">                     <img src="http://p9.itc.cn/q_70/images03/20210102/5f80bb14e34948e483e41adf10a95be0.jpeg" alt />                  </div>                 <div class="back">                     <img src="http://p2.itc.cn/q_70/images03/20210102/cac5241184734654b7f9bd7f5df13175.jpeg" alt />                 </div>             </div> 
                          <div class="card">                 <div class="front">                     <img src="http://p6.itc.cn/q_70/images03/20210102/2e494df1f9694f99bcb515d5978c59f2.jpeg" alt />                  </div>                 <div class="back">                     <img src="http://p6.itc.cn/q_70/images03/20210102/b02455a595b14d2a98a5c447aef4a240.jpeg" alt />                 </div>             </div> 
             
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
