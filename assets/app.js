import "bootswatch/dist/solar/bootstrap.min.css";

import './styles/app.css';


import noUiSlider from 'nouislider';
import 'nouislider/dist/nouislider.css';

const priceSlider = document.getElementById('price-slider');
if(priceSlider) {
    const minPrice = document.getElementById('minPrice');
    const maxPrice = document.getElementById('maxPrice');
    const priceRange = noUiSlider.create(priceSlider, {
        start: [minPrice.value || 0, maxPrice.value || 100000],
        connect: true,
        step: 100,
        range: {
            'min': 0,
            'max': 100000
        }
    });
    priceRange.on('slide', function(values, handle) {
        if(handle === 0) {
            minPrice.value = Math.round(values[0])
        }
        if(handle === 1) {
            maxPrice.value = Math.round(values[1])
        }
        console.log(values, handle);
    })
}

const kilometerSlider = document.getElementById('kilometer-slider');
if(priceSlider) {
    const minKilometer = document.getElementById('minKilometer');
    const maxKilometer = document.getElementById('maxKilometer');
    const kilometerRange = noUiSlider.create(kilometerSlider, {
        start: [minKilometer.value || 0, maxKilometer.value || 500000],
        connect: true,
        step: 100,
        range: {
            'min': 0,
            'max': 500000
        }
    });
    kilometerRange.on('slide', function(values, handle) {
        if(handle === 0) {
            minKilometer.value = Math.round(values[0])
        }
        if(handle === 1) {
            maxKilometer.value = Math.round(values[1])
        }
        console.log(values, handle);
    })
}
