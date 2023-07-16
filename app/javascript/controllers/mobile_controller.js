import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="mobile"
export default class extends Controller {
  static targets = ["toggle"];
  toggleDropdown() {
    console.log("I click the mobile button");
    this.toggleTarget.classList.toggle("hidden");
  }
}
