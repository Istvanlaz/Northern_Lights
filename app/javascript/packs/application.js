import "bootstrap";

import mapboxgl from 'mapbox-gl';

const key = 'pk.eyJ1IjoiaXN0dmFubGF6IiwiYSI6ImNrNTVwMjNucDA4OGUzaG4xd3VlNmswb3IifQ.6gKRaulwU1Fx5C0VeyrXtg';
const enteredAddress = document.querySelector('#party-address');
const results = document.querySelector('.localisation-map');

const mapLayout = () => {
  const query = "RUE STROOBANTS 51, 1140 EVERE"; // <- Change this line to the actual address.
  fetch(`https://api.mapbox.com/geocoding/v5/mapbox.places/${query}.json?access_token=${key}`)
    .then(response => response.json())
    .then((data) => {
      const coord1 = data.features[0].center[0];
      const coord2 = data.features[0].center[1];
      const coordinates = `${coord1} ${coord2}`;
      console.log(coordinates);

      mapboxgl.accessToken = key;
      const map = new mapboxgl.Map({
        container: 'map',
        style: 'mapbox://styles/mapbox/streets-v9',
        center: [coord1, coord2],
        zoom: 12
      });
      new mapboxgl.Marker()
        .setLngLat([coord1, coord2])
        .addTo(map);
    });
};

mapLayout();
