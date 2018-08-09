/**
 * Background map
 */
function map(){
    var OS_API_KEY = 'NVUxtY5r8eA6eIfwrPTAGKrAAsoeI9E9';

    var light = L.tileLayer('https://api2.ordnancesurvey.co.uk/mapping_api/v1/service/zxy/{tilematrixSet}/{layer}/{z}/{x}/{y}.png?key={key}', {
        key: OS_API_KEY,
        tilematrixSet: 'EPSG:3857',
        layer: 'Light 3857'
    });

    var night = L.tileLayer('https://api2.ordnancesurvey.co.uk/mapping_api/v1/service/zxy/{tilematrixSet}/{layer}/{z}/{x}/{y}.png?key={key}', {
        key: OS_API_KEY,
        tilematrixSet: 'EPSG:3857',
        layer: 'Night 3857'
    });

    var baseMaps = {
        "Light": light,
        "Dark": night
    };

    var map = L.map('map', {
        layers: night,
        zoomControl: false,
        attributionControl: false,
        maxZoom: 18,
        minZoom: 7,
        center: ([51.5245255, -0.1338422]),
        zoom: 16,
        doubleClickZoom: false,
    });

    // Controls
    var attr = L.control.attribution({prefix: ""});
    attr.addAttribution("Maps contain OS data © Crown copyright: OS Maps baselayers and building outlines. Building attribute data is © Colouring London contributors");
    attr.addTo(map);
    L.control.zoom({position: 'topright'}).addTo(map);
    L.control.layers(baseMaps, {}, {
        position: 'topright',
        autoZIndex: false
    }).addTo(map);

    // Rendered layer
    var data_layers = {}
    data_layers.size_storeys = L.tileLayer('/tiles/size_storeys/{z}/{x}/{y}.png', {
        maxZoom: 20,
        minZoom: 14
    })
    data_layers.size_storeys.setZIndex(10);

    data_layers.date_year = L.tileLayer('/tiles/date_year/{z}/{x}/{y}.png', {
        maxZoom: 20,
        minZoom: 14
    })
    data_layers.date_year.setZIndex(10);

    data_layers.date_year.addTo(map);
    var active_data_layer = "date_year"

    var year_el = document.querySelector('li[data-map="date_year"]')
    year_el.addEventListener("click", function(e){
        if (active_data_layer !== "date_year"){
            map.removeLayer(data_layers.size_storeys)
            data_layers.date_year.addTo(map)
            active_data_layer = "date_year"
        }
    })
    var storey_el = document.querySelector('li[data-map="size_storeys"]')
    storey_el.addEventListener("click", function(e){
        if (active_data_layer !== "size_storeys"){
            map.removeLayer(data_layers.date_year)
            data_layers.size_storeys.addTo(map)
            active_data_layer = "size_storeys"
        }
    })


    var highlight_layer = L.tileLayer('/tiles/highlight/{z}/{x}/{y}.png', {
        maxZoom: 20,
        minZoom: 14
    })
    highlight_layer.setZIndex(20);
    var highlight_layer_added = false;

    // Query for building on click
    map.on('click', function(e){
        var lat = e.latlng.lat
        var lng = e.latlng.lng
        fetch(
            '/api/buildings?lat='+lat+'&lng='+lng
        ).then(function(response){
            return response.json()
        }).then(function(data){
            if (data.geometry_id){
                highlight_layer.setUrl('/tiles/highlight/{z}/{x}/{y}.png?highlight='+data.geometry_id)
            } else {
                map.removeLayer(highlight_layer)
                highlight_layer_added = false
            }
            if (!highlight_layer_added && data.geometry_id){
                highlight_layer.addTo(map);
            }
            var preview_el = document.getElementById('building-detail');
            if (data.error){
                preview_el.textContent = 'Click a building to see data';
            } else {
                preview_el.textContent = JSON.stringify(data, ["id", "date_year", "date_source", "size_storeys", "uprns"], 2);
            }
        })
    })
}

/**
 * Simple carousel
 *
 * Based on example code by Christian Heilmann
 * http://christianheilmann.com/2015/04/08/keeping-it-simple-coding-a-carousel/
 */
carousel = function(){
    var box = document.querySelector('.carousel');
    if (!box) {
        return
    }
    var next = box.querySelector('.next');
    var prev = box.querySelector('.back');
    // Define the global counter, the items and the
    // current item
    var counter = 0;
    var items = box.querySelectorAll('.carousel-content li');
    var amount = items.length;
    var current = items[0];
    box.classList.add('active');
    // navigate through the carousel
    function navigate(direction) {
        // hide the old current list item
        current.classList.remove('current');

        // calculate the new position
        counter = (counter + direction) % amount;
        counter = counter < 0 ? amount - 1 : counter;
        // set new current element
        // and add CSS class
        current = items[counter];
        current.classList.add('current');
    }
    // add event handlers to buttons
    next.addEventListener('click', function(ev) {
        navigate(1);
    });
    prev.addEventListener('click', function(ev) {
        navigate(-1);
    });
    // show the first element
    // (when direction is 0 counter doesn't change)
    navigate(0);
}

/**
 * "Cut the mustard" and setup page
 */
if('querySelector' in document
   && 'addEventListener' in window) {
    carousel();
    map();
}