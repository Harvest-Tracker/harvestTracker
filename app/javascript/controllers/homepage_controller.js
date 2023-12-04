import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["source", "main"]

  connect() {
    console.log("working", this.element)
    setInterval(() => this.fadeIn(), 4000)
    this.fadeIn()
  }

  copy() {
    navigator.clipboard.writeText(this.sourceTarget.value)
  }

  fadeIn() {
  }
}
