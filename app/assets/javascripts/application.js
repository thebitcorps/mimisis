// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require twitter/bootstrap
//= require_tree .

$('.carousel').carousel();

jQuery(function($) {'use strict';
//Google Map
var latitude = $('#google-map').data('latitude');
var longitude = $('#google-map').data('longitude');
function initialize_map() {
  var myLatlng = new google.maps.LatLng(latitude,longitude);
  var mapOptions = {
    zoom: 16,
    scrollwheel: false,
    center: myLatlng
  };
  var map = new google.maps.Map(document.getElementById('google-map'), mapOptions);
  var marker = new google.maps.Marker({
    position: myLatlng,
    map: map
  });
}
google.maps.event.addDomListener(window, 'load', initialize_map);
});