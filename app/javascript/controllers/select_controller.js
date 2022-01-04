import ApplicationController from './application_controller'
import TomSelect from "tom-select";

// Connects to data-controller="search"
export default class extends ApplicationController {
  static values = { contact: Number | String }
  connect() {
    super.connect()

    new TomSelect("#input-tags", {
      persist: false,
      createOnBlur: true,
      create: false,
      sortField: {
        field: "email",
        direction: "asc"
      },
      onItemAdd: (event) => {
        console.log(event)
        console.log(this.contactValue)
        //this.stimulate('PlayerReflex#update_email', item, this.contactValue)
      },
    });


  }


}


