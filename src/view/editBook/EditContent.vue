<template>
  <div>
    <div class="edit_container">
      <quill-editor
        v-model="content"
        ref="myQuillEditor"
        :options="editorOption"
        @blur="onEditorBlur($event)"
        @focus="onEditorFocus($event)"
        @change="onEditorChange($event)"
      >
      </quill-editor>
    </div> 

  <div class="save">
    <button v-on:click="saveHtml">保存</button>
  </div>
  </div>
</template>

<script>
export default {
  name: "App",
  data() {
    return {
      content: `<p>hello world</p>`,
      editorOption: {},
    };
  },
  computed: {
    editor() {
      return this.$refs.myQuillEditor.quill;
    },
  },
  methods: {
    onEditorReady(editor) {
      // 准备编辑器
    },
    onEditorBlur() {}, // 失去焦点事件
    onEditorFocus() {}, // 获得焦点事件
    onEditorChange() {}, // 内容改变事件
    saveHtml: function (event) {
      this.$store.commit("setContent", this.content);

      // console.log(this.content);
    },
  },
};
</script>

<style>
#app {
  font-family: "Avenir", Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  /* margin-top: 60px; */
}

.quill-editor {
  height: 300px;
  display: inline-block;
}

.save {
  display: inline-block;
}
</style>