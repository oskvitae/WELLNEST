// import { Controller } from "@hotwired/stimulus";
// import mapboxgl from "mapbox-gl";

// export default class extends Controller {
//   static values = {
//     apiKey: String,
//     markers: Array,
//   };

//   connect() {
//     mapboxgl.accessToken = this.apiKeyValue;

//     this.map = new mapboxgl.Map({
//       container: this.element,
//       style: "mapbox://styles/mapbox/streets-v11",
//     });

//     this.#addMarkersToMap();
//     this.#fitMapToMarkers();
//     this.#openInfoWindow();
//   }

//   #addMarkersToMap() {
//     this.markersValue.forEach((marker) => {
//       // Create a popup
//       const popup = new mapboxgl.Popup().setHTML(marker.info_window);

//       // Create a custom HTML element for the marker
//       const customMarker = document.createElement("div");
//       customMarker.className = "marker";
//       customMarker.style.backgroundImage = `url('https://cdn-icons-png.flaticon.com/512/252/252025.png')`; // Example marker icon
//       customMarker.style.backgroundSize = "contain";
//       customMarker.style.width = "25px";
//       customMarker.style.height = "25px";

//       // Create the marker
//       new mapboxgl.Marker(customMarker)
//         .setLngLat([marker.lng, marker.lat])
//         .setPopup(popup)
//         .addTo(this.map);
//     });
//   }

//   #fitMapToMarkers() {
//     const bounds = new mapboxgl.LngLatBounds();
//     this.markersValue.forEach((marker) =>
//       bounds.extend([marker.lng, marker.lat])
//     );
//     this.map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 });
//   }

//   #openInfoWindow() {
//     // Select all cards
//     const cards = document.querySelectorAll(".card");
//     cards.forEach((card, index) => {
//       // Listen for mouseenter event on each card
//       card.addEventListener("mouseenter", () => {
//         this.markersValue[index].togglePopup();
//       });

//       // Listen for mouseleave event on each card
//       card.addEventListener("mouseleave", () => {
//         this.markersValue[index].togglePopup();
//       });
//     });
//   }
// }




import { Controller } from "@hotwired/stimulus";
import mapboxgl from "mapbox-gl";

export default class extends Controller {
  static values = {
    apiKey: String,
    markers: Array,
    marker: Object, // Add for the single marker
  };

  connect() {
    mapboxgl.accessToken = this.apiKeyValue;

    this.map = new mapboxgl.Map({
      container: this.element,
      style: "mapbox://styles/mapbox/streets-v11",
    });

    if (this.hasMarkersValue) {
      // For `/services` page (multiple markers)
      this.#addMarkersToMap();
      this.#fitMapToMarkers();
    } else if (this.hasMarkerValue) {
      // For `/services/:id` page (single marker)
      this.#addMarkerToMap();
      this.#fitMapToMarker();
    }
  }

  #addMarkersToMap() {
    this.markersValue.forEach((marker) => {
      const popup = new mapboxgl.Popup().setHTML(marker.info_window);

      new mapboxgl.Marker()
        .setLngLat([marker.lng, marker.lat])
        .setPopup(popup)
        .addTo(this.map);
    });
  }

  #fitMapToMarkers() {
    const bounds = new mapboxgl.LngLatBounds();
    this.markersValue.forEach((marker) => {
      bounds.extend([marker.lng, marker.lat]);
    });
    this.map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 });
  }

  #addMarkerToMap() {
    const popup = new mapboxgl.Popup().setHTML(this.markerValue.info_window);

    new mapboxgl.Marker()
      .setLngLat([this.markerValue.lng, this.markerValue.lat])
      .setPopup(popup)
      .addTo(this.map);
  }

  #fitMapToMarker() {
    const bounds = new mapboxgl.LngLatBounds();
    bounds.extend([this.markerValue.lng, this.markerValue.lat]);
    this.map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 });
  }
}
