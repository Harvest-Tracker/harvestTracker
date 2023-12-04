import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ['title'];

  initialize() {
    this.titleTarget.classList.remove("opacity-0");
    this.titleTarget.classList.add("text-4xl");
    this.titleTarget.classList.add("opacity-100");
    this.titleTarget.classList.add("animate-pulse");
  }
}
