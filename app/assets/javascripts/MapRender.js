// MapRenderController = {
// 	init: function(){
// 		this.userInputEvent()
// 		MapRenderModel.getPlaces()
// 	},
// 	userInputEvent: function(){
// 		//user input 

// 		 function initAutocomplete() {
//         var map = new google.maps.Map(document.getElementById('map'), {
//           // center: {lat: 40.730610, lng: -73.935242},
//           // zoom: 13,
//           mapTypeId: 'roadmap',
//           styles:       [
//     {
//         "featureType": "all",
//         "elementType": "labels",
//         "stylers": [
//             {
//                 "visibility": "off"
//             }
//         ]
//     },
//     {
//         "featureType": "administrative",
//         "elementType": "all",
//         "stylers": [
//             {
//                 "visibility": "simplified"
//             },
//             {
//                 "color": "#5b6571"
//             },
//             {
//                 "lightness": "35"
//             }
//         ]
//     },
//     {
//         "featureType": "administrative.country",
//         "elementType": "labels.text",
//         "stylers": [
//             {
//                 "visibility": "on"
//             },
//             {
//                 "color": "#464646"
//             }
//         ]
//     },
//     {
//         "featureType": "administrative.country",
//         "elementType": "labels.text.fill",
//         "stylers": [
//             {
//                 "visibility": "off"
//             }
//         ]
//     },
//     {
//         "featureType": "administrative.country",
//         "elementType": "labels.text.stroke",
//         "stylers": [
//             {
//                 "color": "#4c4c4c"
//             },
//             {
//                 "visibility": "on"
//             }
//         ]
//     },
//     {
//         "featureType": "administrative.province",
//         "elementType": "labels.text",
//         "stylers": [
//             {
//                 "visibility": "on"
//             },
//             {
//                 "color": "#000000"
//             },
//             {
//                 "weight": "0.01"
//             }
//         ]
//     },
//     {
//         "featureType": "administrative.province",
//         "elementType": "labels.text.fill",
//         "stylers": [
//             {
//                 "visibility": "off"
//             }
//         ]
//     },
//     {
//         "featureType": "administrative.province",
//         "elementType": "labels.text.stroke",
//         "stylers": [
//             {
//                 "visibility": "on"
//             }
//         ]
//     },
//     {
//         "featureType": "administrative.locality",
//         "elementType": "labels.text",
//         "stylers": [
//             {
//                 "visibility": "on"
//             }
//         ]
//     },
//     {
//         "featureType": "administrative.locality",
//         "elementType": "labels.text.fill",
//         "stylers": [
//             {
//                 "visibility": "off"
//             }
//         ]
//     },
//     {
//         "featureType": "administrative.neighborhood",
//         "elementType": "all",
//         "stylers": [
//             {
//                 "visibility": "off"
//             }
//         ]
//     },
//     {
//         "featureType": "administrative.neighborhood",
//         "elementType": "labels.text",
//         "stylers": [
//             {
//                 "visibility": "on"
//             },
//             {
//                 "color": "#554d4d"
//             }
//         ]
//     },
//     {
//         "featureType": "administrative.neighborhood",
//         "elementType": "labels.text.fill",
//         "stylers": [
//             {
//                 "visibility": "off"
//             }
//         ]
//     },
//     {
//         "featureType": "landscape",
//         "elementType": "all",
//         "stylers": [
//             {
//                 "visibility": "on"
//             },
//             {
//                 "color": "#f3f4f4"
//             }
//         ]
//     },
//     {
//         "featureType": "landscape.man_made",
//         "elementType": "geometry",
//         "stylers": [
//             {
//                 "weight": 0.9
//             },
//             {
//                 "visibility": "off"
//             }
//         ]
//     },
//     {
//         "featureType": "poi.park",
//         "elementType": "geometry.fill",
//         "stylers": [
//             {
//                 "visibility": "on"
//             },
//             {
//                 "color": "#83cead"
//             }
//         ]
//     },
//     {
//         "featureType": "road",
//         "elementType": "all",
//         "stylers": [
//             {
//                 "visibility": "on"
//             },
//             {
//                 "color": "#ffffff"
//             }
//         ]
//     },
//     {
//         "featureType": "road",
//         "elementType": "labels",
//         "stylers": [
//             {
//                 "visibility": "off"
//             }
//         ]
//     },
//     {
//         "featureType": "road.highway",
//         "elementType": "all",
//         "stylers": [
//             {
//                 "visibility": "on"
//             },
//             {
//                 "color": "#fee379"
//             }
//         ]
//     },
//     {
//         "featureType": "road.highway",
//         "elementType": "geometry",
//         "stylers": [
//             {
//                 "visibility": "on"
//             }
//         ]
//     },
//     {
//         "featureType": "road.highway",
//         "elementType": "labels",
//         "stylers": [
//             {
//                 "visibility": "off"
//             }
//         ]
//     },
//     {
//         "featureType": "road.highway",
//         "elementType": "labels.icon",
//         "stylers": [
//             {
//                 "visibility": "off"
//             }
//         ]
//     },
//     {
//         "featureType": "road.highway.controlled_access",
//         "elementType": "labels.icon",
//         "stylers": [
//             {
//                 "visibility": "off"
//             }
//         ]
//     },
//     {
//         "featureType": "road.arterial",
//         "elementType": "all",
//         "stylers": [
//             {
//                 "visibility": "simplified"
//             },
//             {
//                 "color": "#ffffff"
//             }
//         ]
//     },
//     {
//         "featureType": "road.arterial",
//         "elementType": "labels",
//         "stylers": [
//             {
//                 "visibility": "off"
//             }
//         ]
//     },
//     {
//         "featureType": "road.arterial",
//         "elementType": "labels.icon",
//         "stylers": [
//             {
//                 "visibility": "off"
//             }
//         ]
//     },
//     {
//         "featureType": "transit.line",
//         "elementType": "labels.text",
//         "stylers": [
//             {
//                 "visibility": "on"
//             },
//             {
//                 "color": "#1f1f1f"
//             }
//         ]
//     },
//     {
//         "featureType": "transit.line",
//         "elementType": "labels.text.fill",
//         "stylers": [
//             {
//                 "visibility": "on"
//             },
//             {
//                 "color": "#a1a1a1"
//             }
//         ]
//     },
//     {
//         "featureType": "transit.line",
//         "elementType": "labels.text.stroke",
//         "stylers": [
//             {
//                 "visibility": "on"
//             },
//             {
//                 "color": "#7c7c7c"
//             }
//         ]
//     },
//     {
//         "featureType": "water",
//         "elementType": "all",
//         "stylers": [
//             {
//                 "visibility": "on"
//             },
//             {
//                 "color": "#7fc8ed"
//             }
//         ]
//     }
// ]
//         });
// 	}
// }

// MapRenderModel = {
// 	getPlaces: function(){
// 		//AJAX obtains places
// 		//Call back: store that data structure
// 	}
// 	places: []
// }

// MapRenderView = {
// 	// render map and pins
// }