import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="mobile"
export default class extends Controller {
  static targets = ["toggle"];
  connect() {
    console.log("mobile controller connected");
  }
  toggleDropdown() {
    console.log("Helloooooo");
    this.toggleTarget.classList.toggle("hidden");
  }
}
