import { Controller } from "stimulus"

export default class extends Controller {
  static targets = [ "editForm", "editInput", "submitBtn" ]

  connect() {
    // console.log("Hello from the reviews controller - Stimulus")
    // console.log(this.editFormTargets)
  }

  showEditForm(event) {
    this.editFormTarget.classList.toggle('hidden')
    event.currentTarget.classList.toggle('hidden')
    this.editInputTarget.select()
  }

  submitOnEnter(event) {
    if (event.key === 'Enter') {
      event.preventDefault()
      this.submitBtnTarget.click()
    } else if (event.key === 'Escape') {
      this.showEditForm()
    }
  }
}
