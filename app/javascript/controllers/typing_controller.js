import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["question", "input"]

  connect() {
    this.currentQuestionIndex = 0
    this.currentLineIndex = 0
    this.questions = this.questionTargets
    this.inputs = this.questions[this.currentQuestionIndex].querySelectorAll(".typing-field")
    this.activateInput()
  }

  activateInput() {
    this.inputs.forEach((input, index) => {
      input.style.display = index === this.currentLineIndex ? "block" : "none"
    })
    this.inputs[this.currentLineIndex].focus()
  }

  initialize() {
    document.addEventListener("keydown", (e) => {
      if (e.key === "Enter") this.checkLine()
    })
  }

  checkLine() {
    const input = this.inputs[this.currentLineIndex]
    const expected = input.previousElementSibling.textContent.trim()
    const actual = input.value.trim()

    if (expected === actual) {
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
          window.location.href = "/result"
        }
      }
    } else {
      input.classList.add("error") // エラー演出を追加
      input.classList.remove("shake") // アニメーションを再発火させるため一度外す
      void input.offsetWidth // 強制リフローで再発火
      input.classList.add("shake")
    }
  }


}