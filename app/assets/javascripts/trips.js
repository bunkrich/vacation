// // Place all the behaviors and hooks related to the matching controller here.
// // All this logic will automatically be available in application.js.
// var placeSearch, autocomplete;

// function initAutocomplete() {
//   // Create the autocomplete object, restricting the search to geographical
//   // location types.
//   autocomplete = new google.maps.places.Autocomplete(
//     (document.getElementById('autocomplete'))
//     );
//   // When the user selects an address from the dropdown, populate the address fields in the form.
//   autocomplete.addListener('place_changed', fillInAddress);
// }

// function fillInAddress() {
//   // Get the place details from the autocomplete object.
//   var place = autocomplete.getPlace();

//   var lookupID = place.place_id;
//   var imageURL = place.photos[0].getUrl({'maxWidth': 800, 'maxHeight': 500})
//   var address = place.formatted_address
//   var title = place.name

//   document.getElementById('item_lookup').value = lookupID;
//   document.getElementById('item_image').value = imageURL;
//   document.getElementById('item_address').value = address;
//   document.getElementById('item_title').value = title;
// }

// function geolocate() {
//   // Bias the autocomplete object to the user's geographical location,
//   // as supplied by the browser's 'navigator.geolocation' object.
//   if (navigator.geolocation) {
//     navigator.geolocation.getCurrentPosition(function(position) {
//       var geolocation = {
//         lat: position.coords.latitude,
//         lng: position.coords.longitude
//       };
//       var circle = new google.maps.Circle({
//         center: geolocation,
//         radius: position.coords.accuracy
//       });
//       autocomplete.setBounds(circle.getBounds());
//     });
//   }
// }

//   // var initMain = function () {
//   //   initMapp();
//   //   initAutocomplete();
//   // };
