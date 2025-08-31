import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["number"]

  connect() {
    let count = 3
    this.numberTarget.textContent = count

    const interval = setInterval(() => {
      count--
      if (count > 0) {
        this.numberTarget.textContent = count
      } else {
        this.numberTarget.textContent = "Start!"
        setTimeout(() => {
          this.element.style.display = "none"
          this.dispatch("started") // 他のコントローラーに通知可能
        }, 800)
        clearInterval(interval)
      }
    }, 1000)
  }
}