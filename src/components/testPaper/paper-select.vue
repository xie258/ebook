<template>
  <div>
    <div>
      题目：<a-textarea
        v-model="select.title"
        class="title"
        autoSize
        placeholder="please input your question"
      />
    </div>
    <div>
      <div>
        A：<a-input
          v-model="select.answerA"
          class="selection"
          placeholder="anwser A"
        />
      </div>
      <div>
        B：<a-input
          v-model="select.answerB"
          class="selection"
          placeholder="anwser B"
        />
      </div>
      <div>
        C：<a-input
          v-model="select.answerC"
          class="selection"
          placeholder="anwser C"
        />
      </div>
      <div>
        D：<a-input
          v-model="select.answerD"
          class="selection"
          placeholder="anwser D"
        />
      </div>
    </div>
    <div style="margin: 10px">
      正确答案：
      <a-select
        placeholder="Please select correct answer"
        style="width: 120px"
      >
        <a-select-option value="A"> A </a-select-option>
        <a-select-option value="B"> B </a-select-option>
        <a-select-option value="C"> C </a-select-option>
        <a-select-option value="D"> D </a-select-option>
      </a-select>
    </div>

    <div style="margin: 10px">
      <a-button @click="submit">submit</a-button>
    </div>
  </div>
</template>

<script>
export default {
  name: "paper-select",
  props: {},
  data() {
    return {
      select: {
        title: "",
        answerA: "",
        answerB: "",
        answerC: "",
        answerD: "",
      },
      formLayout: "horizontal",
      form: this.$form.createForm(this, { name: "coordinated" }),
    };
  },
  methods: {
    handleSubmit(e) {
      e.preventDefault();
      this.form.validateFields((err, values) => {
        if (!err) {
          console.log("Received values of form: ", values);
        }
      });
    },
    handleSelectChange(value) {},

    resetSelectData() {
      this.select.title = "";
      this.select.answerA = "";
      this.select.answerB = "";
      this.select.answerC = "";
      this.select.answerD = "";
    },

    submit() {
      console.log(this.select);
      this.$emit('data', this.select)
    },
  },
};
</script>

<style scoped>
.selection {
  width: 200px;
  margin: 10px;
}

.title {
  width: 600px;
}
</style>