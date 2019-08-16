import "bootstrap";

import 'mapbox-gl/dist/mapbox-gl.css';
import '@mapbox/mapbox-gl-geocoder/dist/mapbox-gl-geocoder.css';

import { initMapbox } from '../plugins/init_mapbox';
import { initAutocomplete } from '../plugins/init_autocomplete';

import { priceCalc } from '../components/price_calc'
import { dropdown } from '../components/dropdown'

initMapbox();
initAutocomplete();
priceCalc();

// Same for this needs to be put in another file


// NEED TO PUT IT IN ANOTHER FILE


// -------------------



