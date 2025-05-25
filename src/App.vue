<template>
  <div id="app">
    <header>
      <h1>欢迎来到我的 Vue 应用</h1>
    </header>
    <main>
      <p>这是一个简单的页面示例。</p>
      <button @click="showMessage">点击我</button>
      <p v-if="message">{{ message }}</p>
    </main>
  </div>
</template>

<script>
export default {
  data() {
    return {
      message: ''
    };
  },
  methods: {
    showMessage() {
      this.message = '你点击了按钮！！..';
    }
  }
};
</script>

<style>
#app {
  text-align: center;
  margin-top: 50px;
}
button {
  padding: 10px 20px;
  font-size: 16px;
}
</style>