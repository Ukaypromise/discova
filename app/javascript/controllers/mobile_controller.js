import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="mobile"
export default class extends Controller {
  static targets = ["toggle"];
  connect() {
    console.log("mobile controller connected");
  }
  toggleDropdown() {
    // add or remove the `hidden` class from the dropdown content...
    this.dropdownTarget.classList.toggle("hidden");
  }
}
