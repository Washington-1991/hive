import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="details"
export default class extends Controller {

  static targets = ["detail"]
  connect() {

  }

  display(event) {
    event.currentTarget.nextElementSibling.classList.toggle('d-none')

  }

}
