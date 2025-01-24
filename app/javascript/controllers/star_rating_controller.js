import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["star"];

  connect() {
    this.stars = Array.from(this.element.querySelectorAll(".star"));
    this.hiddenInput = document.getElementById("rating-hidden");
    this.resetStars();
  }

  // Reset all stars to gray
  resetStars() {
    this.stars.forEach(star => {
      star.style.color = "#ccc"; // Gray color
    });
  }

  // Highlight stars based on hover
  highlight(event) {
    const selectedIndex = this.stars.indexOf(event.target); // Get index of hovered star
    this.stars.forEach((star, index) => {
      star.style.color = index <= selectedIndex ? "black" : "#ccc"; // Fill stars up to hovered one with black
    });
  }

  // Save the selected rating when a star is clicked
  select(event) {
    const selectedValue = event.target.dataset.value;
    this.hiddenInput.value = selectedValue; // Set the hidden input value to the clicked star's value

    // Update the star colors based on the selected rating
    this.stars.forEach((star, index) => {
      star.style.color = index < selectedValue ? "black" : "#ccc"; // Fill stars up to selected one with black
    });
  }
}
