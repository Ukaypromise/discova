import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="post-sort"
export default class extends Controller {
  connect() {
    console.log('Connecting to data-controller', this.element)
  }
}
