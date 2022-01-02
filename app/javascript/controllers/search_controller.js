import ApplicationController from './application_controller'
// Connects to data-controller="search"
export default class extends ApplicationController {
  connect() {
    super.connect()
  }

  search(event) {
    if (event.target.value === undefined || event.target.value === '' || event?.target?.value?.length <= 2) {
      return
    }
    event.preventDefault()
    clearTimeout(this.timeout)
    this.timeout = setTimeout(() => {
      this.stimulate('PlayerReflex#search', event.target.value)
    }, 200)
  }

}


