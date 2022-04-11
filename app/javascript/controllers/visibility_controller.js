import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = [ "hideable" ]

<<<<<<< HEAD
  // connect() {
  //   console.log('Hello, visibility!');
  // }
=======
>>>>>>> 553a0eb2946e7ad8ee866566fabb41af6c9de522

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
