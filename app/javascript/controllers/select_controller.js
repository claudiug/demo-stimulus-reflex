import ApplicationController from './application_controller'
import TomSelect from 'tom-select'

export default class extends ApplicationController {
  static values = {
    reflex: String,
    values: Array,
    options: String
  }

  connect() {
    this.control = new TomSelect(this.element, {
      plugins: ['remove_button'],
      valueField: 'value',
      labelField: 'text',
      searchField: [],
      preload: "focus",
      options: JSON.parse(this.optionsValue),
      items: this.valuesValue || [],
      load: this.search
    })
  }

  search = (search, callback) =>
    this.stimulate(this.reflexValue, search).then(({ payload }) =>
      callback(payload)
    )

  disconnect() {
    if (this.control) this.control.destroy()
  }
}
