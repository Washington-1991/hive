import { Controller } from "@hotwired/stimulus";
import Chart from "stimulus-chartjs";
// Connects to data-controller="progress"

const application = Application.start();
application.register("chart", Chart);

export default class extends Controller {
  connect() {}
}
