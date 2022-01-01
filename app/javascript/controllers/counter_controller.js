import ApplicationController from './application_controller'

export default class extends ApplicationController {
  static values = {
    step: Number
  }

  connect () {
    super.connect()
  }

  increment(event) {
    event.preventDefault()
    this.stimulate('Counter#increment', this.stepValue)
  }
}
