import { Controller } from "@hotwired/stimulus";

// Connects to data-controller="aptitude"
export default class extends Controller {
  static targets = ["input", "aptitudeTest", "image", "difficulty"];

  connect() {
    // console.log(this.testTarget.dataset.difficulty);
  }

  nextTest(event) {
    const aptitudeTests = this.aptitudeTestTargets;
    const currentTest = aptitudeTests.find(
      (test) => !test.classList.contains("d-none")
    );
    if (currentTest.id === "carouselExampleRide3") {
      const form = this.element;
      const inputs = this.inputTargets;
      const images = this.imageTargets;
      const difficulties = this.difficultyTargets;

      const activeImages = images.filter((image) =>
        image.classList.contains("active")
      );

      // console.log(activeImages);
      // console.log(activeImages[0]);
      // console.log(activeImages[0].dataset);
      // console.log(activeImages[0].dataset.difficulty);

      // const filteredElements = Array.from(nodeList).filter(condition);

      inputs[0].value = activeImages[0].dataset.difficulty;
      inputs[1].value = activeImages[1].dataset.difficulty;
      inputs[2].value = activeImages[2].dataset.difficulty;

      form.submit();
    } else {
      currentTest.classList.add("d-none");
      currentTest.nextElementSibling.classList.remove("d-none");
    }
  }
}
