import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr"

export default class extends Controller {
  connect() {
    console.log("flatpickr connected") 
    flatpickr(this.element, {
      enableTime: true,
      dateFormat: "Y-m-d H:i",
    })
  }
}