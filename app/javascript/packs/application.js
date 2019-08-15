import "bootstrap";

import 'mapbox-gl/dist/mapbox-gl.css';
import '@mapbox/mapbox-gl-geocoder/dist/mapbox-gl-geocoder.css';

import { initMapbox } from '../plugins/init_mapbox';
import { initAutocomplete } from '../plugins/init_autocomplete';

initMapbox();
initAutocomplete();

// NEED TO PUT IT IN ANOTHER FILE

const date_from = document.getElementById("booking_start_date")

const date_to = document.getElementById("booking_end_date")

const total_price = document.getElementById("total-price")
const item_price = document.getElementById("item-price")

function parseDate(str) {
    var mdy = str.split('-');
    return new Date(mdy[2], mdy[0]-1, mdy[1]);
}

function datediff(date_from, date_to) {
    // Take the difference between the dates and divide by milliseconds per day.
    // Round to nearest whole number to deal with DST.
    return Math.round((date_to-date_from)/(1000*60*60*24*365));
}

function calculateTotalPrice(event) {
  const rent_days = datediff(parseDate(date_from.value), parseDate(date_to.value))
  total_price.innerText = rent_days * item_price.dataset.price
  console.log(rent_days * item_price.dataset.price)

}


date_from.addEventListener("change", calculateTotalPrice)
date_to.addEventListener("change", calculateTotalPrice)

// -------------------

