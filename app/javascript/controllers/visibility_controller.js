import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = [ "hideable" ]

  showTargets(event) {
    event.preventDefault();
    this.hideableTargets.forEach(el => {
      el.hidden = false
    });
  }

  hideTargets(event) {
    event.preventDefault();

    this.hideableTargets.forEach(el => {
      el.hidden = true
    });
  }

  toggleTargets(event) {
    event.preventDefault();
    this.hideableTargets.forEach((el) => {
      el.hidden = !el.hidden
    });
  }
}
