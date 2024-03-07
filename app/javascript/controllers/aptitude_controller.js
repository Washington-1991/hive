import { Controller } from "@hotwired/stimulus";

// Connects to data-controller="aptitude"
export default class extends Controller {
  static targets = ["input", "aptitudeTest", "image"];

  connect() {}

  nextTest(event) {
    const aptitudeTests = this.aptitudeTestTargets;
    const currentTest = aptitudeTests.find(
      (test) => !test.classList.contains("d-none")
    );
    if (currentTest.id === "carouselExampleRide3") {
      const form = this.element;
      const inputs = this.inputTargets;
      const images = this.imageTargets.select((image) =>
        image.classList.contains("active")
      );

      inputs[0].value = images[0].dataset.difficulty;
      inputs[1].value = images[1].dataset.difficulty;
      inputs[2].value = images[2].dataset.difficulty;

      form.submit();
    } else {
      currentTest.classList.add("d-none");
      currentTest.nextElementSibling.classList.remove("d-none");
    }
  }
}
