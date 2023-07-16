import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="notification"
export default class extends Controller {
  static targets =["notify"]
  connect() {
    console.log("Connected Notification")
  }
  togglenotification(){
    this.notifyTarget.classList.toggle("hidden");
    console.log("Notify me");
  }
}
