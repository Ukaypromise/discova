import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets =["name", "output"]
  greet() {
    console.log(this.name);
    this.outputTarget.textContent = this.name;
  }
  get name() {
    return this.nameTarget.value
  }

  get output() {
    return this.outputTarget
  }
}
