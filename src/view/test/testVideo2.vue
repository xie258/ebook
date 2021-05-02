<template>
  <div>
    <div v-for="i in 1" :key="i" style="padding-left:300px;padding-right:300px;padding-top:50px">
      <video-player class="video-player vjs-custom-skin" ref="videoPlayer" :playsline="false" :options="playerOptions"></video-player>
    </div>
  </div>
</template>

<script>

import hangtianImageURl from '../../../static/img/航天纪录片.png'
import warmImageURl from '../../../static/img/全球变暖.png'

export default {
  name: 'Video2',
  data () {
    return {
      name: "hangtian",
      playlist:{
        "hangtian":{
          mp4Url: "http://www.kepu.gov.cn/upload/video/9477025a-0ac0-47eb-879e-876757a34194.mp4",
          posterUrl: hangtianImageURl,
        },
        "warm":{
          mp4Url: "http://www.kepu.gov.cn/upload/video/498846ce-bd9c-4c3d-b459-8076ef541db3.mp4",
          posterUrl: warmImageURl,
        }
      },
      playerOptions: {
        playbackRates: [0.7, 1.0, 1.5, 2.0], // 播放速度
        autoplay: false, // 如果true,浏览器准备好时开始回放。
        muted: false, // 默认情况下将会消除任何音频。
        loop: false, // 导致视频一结束就重新开始。
        preload: 'auto', // 建议浏览器在<video>加载元素后是否应该开始下载视频数据。auto浏览器选择最佳行为,立即开始加载视频（如果浏览器支持）
        language: 'zh-CN',
        aspectRatio: '16:9', // 将播放器置于流畅模式，并在计算播放器的动态大小时使用该值。值应该代表一个比例 - 用冒号分隔的两个数字（例如"16:9"或"4:3"）
        fluid: true, // 当true时，Video.js player将拥有流体大小。换句话说，它将按比例缩放以适应其容器。
        sources: [{
          type: 'video/mp4', // 这里的种类支持很多种：基本视频格式、直播、流媒体等，具体可以参看git网址项目
          src: 'http://www.kepu.gov.cn/upload/video/498846ce-bd9c-4c3d-b459-8076ef541db3.mp4' // url地址
        }],
        poster: '../../../../static/full_res.jpg', // 你的封面地址
        // width: document.documentElement.clientWidth - 400, // 播放器宽度
        width:  400, // 播放器宽度
        notSupportedMessage: '此视频暂无法播放，请稍后再试', // 允许覆盖Video.js无法播放媒体源时显示的默认信息。
        controlBar: {
          timeDivider: true,
          durationDisplay: true,
          remainingTimeDisplay: false,
          fullscreenToggle: true // 全屏按钮
        }
      }
    }
  },
  mounted() {
    this.name = this.$route.query.index;
    this.playerOptions.sources[0].src = this.playlist[this.name].mp4Url;
    this.playerOptions.poster = this.playlist[this.name].poster;
  }
}
</script>

<style scoped >
  .video-js .vjs-icon-placeholder {
    width: 80%;
    height: 80%;
    display: block;
  }
  /* .video-player {
    width: 50%;
  } */
</style>