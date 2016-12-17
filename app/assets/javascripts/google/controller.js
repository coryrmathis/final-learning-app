function Controller(){
  this._model = new Model();
  this._view = new View();
  this.currentPins = new Array;
}

Controller.prototype.getView = function(){
  return this._view;
}

Controller.prototype.getModel = function(){
  return this._model;
}

Controller.prototype.handlePins = function(){
  var ajaxPromise = this.getModel().getPins();
  var that = this;
  ajaxPromise.done(function(responses){
    that.currentPins = responses;
    console.log(responses);
    var map = new google.maps.Map(document.getElementById('map'), {
    zoom: 8
  });
    var geocoder = new google.maps.Geocoder();
    geocodeAddress(geocoder, map, responses);
  })

}

function geocodeAddress(geocoder, resultsMap, responses) {
  // var address = document.getElementById('address').value;
  var currentPins = responses;
  console.log(responses);
  // var address = currentPins[0].address;
  for(var i = 0; i < currentPins.length; i++) {
    geocoder.geocode({'address': currentPins[i].location}, function(results, status) {
      if (status === 'OK') {
        resultsMap.setCenter(results[0].geometry.location);
        var marker = new google.maps.Marker({
          map: resultsMap,
          position: results[0].geometry.location
        });
      } else {
        alert('Geocode was not successful for the following reason: ' + status);
      }
    });
  }
}


function initMap() {
  var map = new google.maps.Map(document.getElementById('map'), {
    zoom: 8,
    center: {lat: -34.397, lng: 150.644}
  });
  var geocoder = new google.maps.Geocoder();
  var infoWindow = new google.maps.InfoWindow({map: map});
  console.log(navigator.geolocation);
  if (navigator.geolocation) {
    navigator.geolocation.getCurrentPosition(function(position) {
      var pos = {
        lat: position.coords.latitude,
        lng: position.coords.longitude
      };

      infoWindow.setPosition(pos);
      infoWindow.setContent('Location found.');
      map.setCenter(pos);
    }, function() {
      handleLocationError(true, infoWindow, map.getCenter());
    });
  }
}


Controller.prototype.initialize = function(){
  this.handlePins();
}
