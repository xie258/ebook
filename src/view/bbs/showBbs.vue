<template>
  <div>
    <a-list
      v-if="comments.length"
      :data-source="comments"
      :header="`${comments.length} ${
        comments.length > 1 ? 'replies' : 'reply'
      }`"
      item-layout="horizontal"
    >
      <a-list-item slot="renderItem" slot-scope="item, index">
        <a-comment
          :author="item.author"
          :avatar="item.avatar"
          :content="item.content"
          :datetime="item.datetime"
        />
      </a-list-item>
    </a-list>
    <a-comment>
      <a-avatar
        slot="avatar"
        src="https://zos.alipayobjects.com/rmsportal/ODTLcjxAfvqbxHnVXCYX.png"
        alt="Han Solo"
      />
      <div slot="content">
        <a-form-item>
          <a-textarea :rows="4" :value="value" @change="handleChange" />
        </a-form-item>
        <a-form-item>
          <a-button
            html-type="submit"
            :loading="submitting"
            type="primary"
            @click="handleSubmit"
          >
            Add Comment
          </a-button>
        </a-form-item>
      </div>
    </a-comment>
  </div>
</template>
<script>
import moment from "moment";
import { doCreateBbsComment, doGetBbsCommentByTopic } from "@/api/bbs";
export default {
  data() {
    return {
      comments: [],
      submitting: false,
      value: "",
      moment,
      bbsId: -1,
    };
  },
  mounted() {
    this.bbsId = this.$route.query.bbsId;
    this.getTopic();
  },
  methods: {
    async postComment() {
      const request = {};
      request.bbsId = this.bbsId;
      request.author = localStorage.getItem("username");
      request.avatar =
        "https://zos.alipayobjects.com/rmsportal/ODTLcjxAfvqbxHnVXCYX.png";
      request.content = this.value;
      request.createTime = new Date().getTime();
      const response = await doCreateBbsComment(request);
      console.log(response);
      if (response.data.status === 200) {
        this.$message.info(`create comment successfully!`);
        this.getTopic();
      } else {
        this.$message.error(response.data.data);
      }
    },
    async getTopic() {
      const request = { bbsId: this.bbsId};
      const response = await doGetBbsCommentByTopic(request);
      console.log(response);
      if (response.data.status === 200) {
        this.$message.info(`create comment successfully!`);
                console.log(response.data.data)
        this.comments = response.data.data.map(comment => {
            console.log(comment.createTime)
            console.log(typeof(comment.createTime))
            let t=comment.createTime
            t = t.split(' ')
            t = `${t[2]} ${t[1]}, ${t[3]} ${t[4]}`
            t = new Date(t)
            console.log(t)
            comment.datetime = moment(t).fromNow();
            return comment; 
        })
      } else {
        this.$message.error(response.data.data);
      }
      this.submitting = false;
      this.value = "";
    },
    async handleSubmit() {
      if (!this.value) {
        return;
      }

      this.submitting = true;
      this.postComment();
    },
    handleChange(e) {
      this.value = e.target.value;
    },
  },
};
</script>