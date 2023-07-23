import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="profile-menu"
export default class extends Controller {
  static targets = ["dropdown"];
  connect() {
    console.log("menu controller connected");
  }
  toggleDropdown() {
    // add or remove the `hidden` class from the dropdown content...
    this.dropdownTarget.classList.toggle("hidden");
    console.log("I click the icon menu");
  }
}
