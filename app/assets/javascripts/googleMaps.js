//MAPS STUFF
  console.log("💜TOP OF THE JS FILEy💜")
function initMapp() {
	console.log("🌻STARTING initMAPP FUNCTION🌻 ")
	var map = new google.maps.Map(document.getElementById('map'), {
		maxZoom: 12,
		mapTypeId: 'roadmap',
		styles:       [
		{
			"featureType": "all",
			"elementType": "labels",
			"stylers": [
			{
				"visibility": "off"
			}
			]
		},
		{
			"featureType": "administrative",
			"elementType": "all",
			"stylers": [
			{
				"visibility": "simplified"
			},
			{
				"color": "#5b6571"
			},
			{
				"lightness": "35"
			}
			]
		},
		{
			"featureType": "administrative.country",
			"elementType": "labels.text",
			"stylers": [
			{
				"visibility": "on"
			},
			{
				"color": "#464646"
			}
			]
		},
		{
			"featureType": "administrative.country",
			"elementType": "labels.text.fill",
			"stylers": [
			{
				"visibility": "off"
			}
			]
		},
		{
			"featureType": "administrative.country",
			"elementType": "labels.text.stroke",
			"stylers": [
			{
				"color": "#4c4c4c"
			},
			{
				"visibility": "on"
			}
			]
		},
		{
			"featureType": "administrative.province",
			"elementType": "labels.text",
			"stylers": [
			{
				"visibility": "on"
			},
			{
				"color": "#000000"
			},
			{
				"weight": "0.01"
			}
			]
		},
		{
			"featureType": "administrative.province",
			"elementType": "labels.text.fill",
			"stylers": [
			{
				"visibility": "off"
			}
			]
		},
		{
			"featureType": "administrative.province",
			"elementType": "labels.text.stroke",
			"stylers": [
			{
				"visibility": "on"
			}
			]
		},
		{
			"featureType": "administrative.locality",
			"elementType": "labels.text",
			"stylers": [
			{
				"visibility": "on"
			}
			]
		},
		{
			"featureType": "administrative.locality",
			"elementType": "labels.text.fill",
			"stylers": [
			{
				"visibility": "off"
			}
			]
		},
		{
			"featureType": "administrative.neighborhood",
			"elementType": "all",
			"stylers": [
			{
				"visibility": "off"
			}
			]
		},
		{
			"featureType": "administrative.neighborhood",
			"elementType": "labels.text",
			"stylers": [
			{
				"visibility": "on"
			},
			{
				"color": "#554d4d"
			}
			]
		},
		{
			"featureType": "administrative.neighborhood",
			"elementType": "labels.text.fill",
			"stylers": [
			{
				"visibility": "off"
			}
			]
		},
		{
			"featureType": "landscape",
			"elementType": "all",
			"stylers": [
			{
				"visibility": "on"
			},
			{
				"color": "#f3f4f4"
			}
			]
		},
		{
			"featureType": "landscape.man_made",
			"elementType": "geometry",
			"stylers": [
			{
				"weight": 0.9
			},
			{
				"visibility": "off"
			}
			]
		},
		{
			"featureType": "poi.park",
			"elementType": "geometry.fill",
			"stylers": [
			{
				"visibility": "on"
			},
			{
				"color": "#83cead"
			}
			]
		},
		{
			"featureType": "road",
			"elementType": "all",
			"stylers": [
			{
				"visibility": "on"
			},
			{
				"color": "#ffffff"
			}
			]
		},
		{
			"featureType": "road",
			"elementType": "labels",
			"stylers": [
			{
				"visibility": "off"
			}
			]
		},
		{
			"featureType": "road.highway",
			"elementType": "all",
			"stylers": [
			{
				"visibility": "on"
			},
			{
				"color": "#fee379"
			}
			]
		},
		{
			"featureType": "road.highway",
			"elementType": "geometry",
			"stylers": [
			{
				"visibility": "on"
			}
			]
		},
		{
			"featureType": "road.highway",
			"elementType": "labels",
			"stylers": [
			{
				"visibility": "off"
			}
			]
		},
		{
			"featureType": "road.highway",
			"elementType": "labels.icon",
			"stylers": [
			{
				"visibility": "off"
			}
			]
		},
		{
			"featureType": "road.highway.controlled_access",
			"elementType": "labels.icon",
			"stylers": [
			{
				"visibility": "off"
			}
			]
		},
		{
			"featureType": "road.arterial",
			"elementType": "all",
			"stylers": [
			{
				"visibility": "simplified"
			},
			{
				"color": "#ffffff"
			}
			]
		},
		{
			"featureType": "road.arterial",
			"elementType": "labels",
			"stylers": [
			{
				"visibility": "off"
			}
			]
		},
		{
			"featureType": "road.arterial",
			"elementType": "labels.icon",
			"stylers": [
			{
				"visibility": "off"
			}
			]
		},
		{
			"featureType": "transit.line",
			"elementType": "labels.text",
			"stylers": [
			{
				"visibility": "on"
			},
			{
				"color": "#1f1f1f"
			}
			]
		},
		{
			"featureType": "transit.line",
			"elementType": "labels.text.fill",
			"stylers": [
			{
				"visibility": "on"
			},
			{
				"color": "#a1a1a1"
			}
			]
		},
		{
			"featureType": "transit.line",
			"elementType": "labels.text.stroke",
			"stylers": [
			{
				"visibility": "on"
			},
			{
				"color": "#7c7c7c"
			}
			]
		},
		{
			"featureType": "water",
			"elementType": "all",
			"stylers": [
			{
				"visibility": "on"
			},
			{
				"color": "#7fc8ed"
			}
			]
		}
		]
	});

		var service = new google.maps.places.PlacesService(map);

    //create empty LatLngBounds object
    var bounds = new google.maps.LatLngBounds();

    places.forEach(function(object){
    	service.getDetails(
    	{
    		placeId: object.place_id
    	}, function (result, status) {
    		if (status != google.maps.places.PlacesServiceStatus.OK) {
    			alert(status);
    			return;
    		}
    		var iconBase = 'https://maps.google.com/mapfiles/kml/shapes/';

    		if (object.category === "Restaurant" || object.category === "Food") {
    			var iconURL = "http://svgur.com/i/1vX.svg";
    		} else if (object.category === "Hotel" || object.category === "Lodging") {
    			var iconURL = "http://svgur.com/i/1vu.svg";
    		} else if (object.category === "Attraction") {
    			var iconURL = "http://svgur.com/i/1vY.svg";
    		} else if (object.category === "Nightlife" || object.category === "Bars") {
    			var iconURL = "http://svgur.com/i/1u1.svg"; 
    		}
    		else {
    			var iconURL = 'http://svgur.com/i/1uq.svg';
    		}
    		var marker = new google.maps.Marker({
    			map: map,
    			icon: iconURL,
    			place: {
    				placeId: object.place_id,
    				location: result.geometry.location
    			}
    		});
        //extend the bounds to include each marker's position
        bounds.extend(marker.place.location);
        map.fitBounds(bounds);

        infoWindow = new google.maps.InfoWindow();
        // map.setCenter(marker.getPosition());
        var address = result.adr_address;
        var newAddr = address.split("</span>,");

        google.maps.event.addListener(marker, 'click', function() {
        	infoWindow.open(map,marker);
        	infoWindow.setContent(result.name + "<br>" + newAddr[0] + "<br>" + newAddr[1] + "<br>" + newAddr[2]);
        });
      });
    })
  }




//AUTOCOMPLETE FOR ITEMS and NEW TRIP

// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
var placeSearch, autocomplete;

console.log("💜🔰 ABOVEIN IT AUTOCOMPLETE FUNCTION 🔰💜")
function initAutocomplete() {
  // Create the autocomplete object, restricting the search to geographical
  // location types.
	console.log("🔰 middle OF initAUTOCOMPLETE 🔰")
	if (document.getElementById('autocomplete') !=null) {
	  autocomplete = new google.maps.places.Autocomplete(
	  	(document.getElementById('autocomplete'))
	  	);
	  // When the user selects an address from the draopdown, populate the address fields in the form.
		console.log("🔰 〽️ ⚠️END OF initAUTOCOMPLETE ⚠️ 〽️ 🔰")
	  autocomplete.addListener('place_changed', fillInAddress)
	}
}
function fillInAddress() {
	console.log("FILL IN ADDRESS function ✅✅")
  // Get the place details from the autocomplete object.
  var place = autocomplete.getPlace();

  var lookupID = place.place_id;
	console.log("⚠️PLACE DOT PLACE ID ✅✅")

	console.log (place.photos)
	if (place.photos) {
		var imageURL = place.photos[0].getUrl({'maxWidth': 800, 'maxHeight': 500})
	}
  var address = place.formatted_address
  var title = place.name

  if (document.getElementById('item_lookup') !=null) {
		document.getElementById('item_lookup').value  = lookupID;
	}
	if (document.getElementById('trip_lookup') !=null) {
		document.getElementById('trip_lookup').value  = lookupID;
	}
		if (place.photos) {
		  if (document.getElementById('item_image') !=null) {
				document.getElementById('item_image').value = imageURL;
			}
		}
	if (document.getElementById('item_address') !=null) {
		document.getElementById('item_address').value = address;
	}
	if (document.getElementById('trip_location') !=null) {
		document.getElementById('trip_location').value = address;
	}
	if (document.getElementById('item_title') !=null) {
		document.getElementById('item_title').value = title;
	}
	if (document.getElementById('trip_name') !=null) {
		document.getElementById('trip_name').value = title;
	}
}
function searchLocal() {
	console.log("❎ 🤹‍♀️ Brent's New Function 🤹‍♀️ ❎")
	var geolocation = {
		lat: 41.130882,
		lng: -91.462804
	};
	var circle = new google.maps.Circle({
		center: geolocation,
		radius: position.coords.accuracy
	});
	autocomplete.setBounds(circle.getBounds());
}

function geolocate() {
	console.log("❎ ❎ ❎  GEO LOCATE FUNCTION ❎ ❎ ❎")
	console.log()
  // Bias the autocomplete object to the user's geographical location,
  // as supplied by the browser's 'navigator.geolocation' object.
	if (navigator.geolocation) {
		console.log("Ⓜ️ ❎ Ⓜ️  GEO LOCATE IS WORKING Ⓜ️ ❎ Ⓜ️")

  	navigator.geolocation.getCurrentPosition(function(position) {
					console.log("💬 ❎ 💬  GEO LOCATE IS WORKING 💬 ❎ 💬")
  		var geolocation = {
  			lat: position.coords.latitude,
  			lng: position.coords.longitude
  		};
  		var circle = new google.maps.Circle({
  			center: geolocation,
  			radius: position.coords.accuracy
  		});
  		autocomplete.setBounds(circle.getBounds());
  	});
  }
}
					console.log("😈BEFORE INITMAIN😈")
var initMain = function () {
					console.log("💋VAR INITMAIN💋")
	initMapp();
					console.log(" 🌏MAPP 🌏 ⭕️⭕️")
	initAutocomplete();
					console.log("⭐️AUTO⭐️ ⭕️⭕️")
};
