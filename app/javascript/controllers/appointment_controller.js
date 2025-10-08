import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="appointment"
export default class extends Controller {
  static targets = ["service", "professional"]

  connect() {
    console.log("appointment controller here");

    this.updateProfessionals()
  }

  updateProfessionals() {
     const selectedServices = this.serviceTargets
    .filter(cb => cb.checked)
    .map(cb => cb.value)

  console.log("Serviços selecionados:", selectedServices)

  this.professionalTargets.forEach(radio => {
    const label = this.element.querySelector(`label[for="${radio.id}"]`)
    const services = label.dataset.services?.split(",") || []

    console.log(`Profissional ${radio.id} oferece:`, services)

    const isMatch = selectedServices.every(service => services.includes(service))
    radio.disabled = !isMatch
    })

  }
}
