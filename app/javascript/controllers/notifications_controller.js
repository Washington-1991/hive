import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="notifications"
export default class extends Controller {

  static targets = ["notification"]
  connect() {
  }

  display(event) {
    event.currentTarget.nextElementSibling.classList.toggle('d-none')

  }
}
