import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["question", "input"]

  connect() {
    this.startTime = new Date()
    this.currentQuestionIndex = 0
    this.currentLineIndex = 0
    this.questions = this.questionTargets//問題をすべて取得
    this.inputs = this.questions[this.currentQuestionIndex].querySelectorAll(".typing-field")//最初の問題の入力欄を取得
    this.activateInput()
  }

  activateInput() {
    this.inputs.forEach((input, index) => {
      input.style.display = index === this.currentLineIndex ? "block" : "none" //現在の行だけ表示
    })
    this.inputs[this.currentLineIndex].focus() //現在の行にフォーカス
  }

  initialize() {
    this.missCounts = {}
    document.addEventListener("keydown", (e) => {
      if (e.key === "Enter") this.checkLine()
    })
  }

  checkLine() {
    const key = `q${this.currentQuestionIndex}l${this.currentLineIndex}`
    const input = this.inputs[this.currentLineIndex] //現在の入力欄(デザイン用)
    const expected = input.previousElementSibling.textContent.trim() //期待されるテキスト
    const actual = input.value.trim() //ユーザーが入力したテキスト

    if (expected === actual) { // 正解
      input.classList.remove("error") // エラー演出を解除
      input.style.display = "none"
      this.currentLineIndex++

      if (this.currentLineIndex < this.inputs.length) {
        this.activateInput()
      } else {
        this.questions[this.currentQuestionIndex].style.display = "none"
        this.currentQuestionIndex++
        this.currentLineIndex = 0

        if (this.currentQuestionIndex < this.questions.length) {
          this.questions[this.currentQuestionIndex].style.display = "block"
          this.inputs = this.questions[this.currentQuestionIndex].querySelectorAll(".typing-field")
          this.activateInput()
        } else {
          console.log("currentQuestionIndex");
          this.endGame()
        }
      }
    } else {
      this.missCounts[key] = (this.missCounts[key] || 0) + 1
      input.classList.add("error") // エラー演出を追加
      input.classList.remove("shake") // アニメーションを再発火させるため一度外す
      void input.offsetWidth // 強制リフローで再発火
      input.classList.add("shake")
    }
  }

  endGame() {
    console.log("endGame");
    const endTime = new Date()
    const duration = Math.floor((endTime - this.startTime) / 1000) // 秒数
    this.submitResult(duration)
  }

  submitResult(duration) {
    console.log("submitResult");
    
    const form = document.getElementById("result-form")
    form.querySelector("[name='duration']").value = duration
    form.querySelector("[name='miss_data']").value = JSON.stringify(this.missCounts)
    form.submit()
  }

}