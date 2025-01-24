import { Controller } from "@hotwired/stimulus";

// Connects to data-controller="toggle"
export default class extends Controller {
  static targets = ["container", "button"]; // Define targets

  connect() {
    this.isVisible = false; // Track visibility state
  }

  toggle() {
    this.isVisible = !this.isVisible; // Toggle the state
    this.containerTarget.classList.toggle("active", this.isVisible); // Toggle the 'active' class
    this.buttonTarget.textContent = this.isVisible ? "Show Less" : "Show Map"; // Update button text
  }
}
