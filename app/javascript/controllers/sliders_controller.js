// Visit The Stimulus Handbook for more details
// https://stimulusjs.org/handbook/introduction
//
// This example controller works with specially annotated HTML like:
//
// <div data-controller="hello">
//   <h1 data-target="hello.output"></h1>
// </div>

import { Controller } from "stimulus"

export default class extends Controller {
  static targets = [ "output" ]

  initialize() {
    this.showSlide(0)
  }

  showIt(e) {
    const index = parseInt(e.currentTarget.dataset.index)
    this.showSlide(index)
  }

  showSlide(index) {
    this.notesTargets.forEach((el, i) => {
      el.classList.toggle("active", index == i)
    })
  }
}
