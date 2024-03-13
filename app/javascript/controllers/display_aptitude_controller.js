import { Controller } from "@hotwired/stimulus";

// Connects to data-controller="display-aptitude"
export default class extends Controller {
  static targets = ["training", "information"];
  connect() {
    console.log(this.informationTarget);
  }

  display() {
    this.informationTarget.classList.add("d-none");
    this.trainingTarget.classList.remove("d-none");
  }
}
