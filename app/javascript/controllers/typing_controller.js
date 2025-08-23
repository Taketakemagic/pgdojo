import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["question", "input"]

  connect() {
    this.currentIndex = 0
    this.questions = this.questionTargets
  }

  initialize() {
    this.inputTarget.addEventListener("keydown", (e) => {
      if (e.key === "Enter") {
        this.checkAnswer()
      }
    })
  }

  checkAnswer() {
    const currentQuestion = this.questions[this.currentIndex]
    const expected = currentQuestion.textContent.trim()
    const actual = this.inputTarget.value.trim()

    if (expected === actual) {
      currentQuestion.style.display = "none"
      this.inputTarget.value = ""
      this.currentIndex++

      if (this.currentIndex < this.questions.length) {
        this.questions[this.currentIndex].style.display = "block"
      } else {
        window.location.href = "/result"
      }
    } else {
      this.inputTarget.style.borderColor = "red"
    }
  }
}