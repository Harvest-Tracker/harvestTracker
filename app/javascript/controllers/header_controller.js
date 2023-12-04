import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = [ "image", "name" ]

  greet() {
    console.log(`hello ${this.name} the header controller`, this.element);
  }

  get name() {
    return this.nameTarget.value
  }
}
