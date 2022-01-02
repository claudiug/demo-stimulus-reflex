import ApplicationController from './application_controller'

export default class extends ApplicationController {
  static values = {
    step: Number,
    active: Boolean
  }

  connect () {
    super.connect()
  }

  // update() {
  //   console.log(this.activeValue)
  // }

  increment(event) {
    event.preventDefault()
    this.stimulate('Counter#increment', this.stepValue)
  }
}
