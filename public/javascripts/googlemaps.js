// Google Maps ********************************************
(function() {
  window.onload = function() {
	  
	// Creating a reference to the mapDiv
    var mapDiv = document.getElementById('map');
    
    // Creating a latLng for the center of the map
    var latlng = new google.maps.LatLng(25.95, 32.416667);
    
    // Creating an object literal containing the properties 
    // we want to pass to the map  
    var options = {
      center: latlng,
      zoom: 4,
      mapTypeId: google.maps.MapTypeId.ROADMAP
    };

    // Creating the map
    var map = new google.maps.Map(mapDiv, options);

	// Adding a marker to the map
    var marker = new google.maps.Marker({
      position: new google.maps.LatLng(25.95, 32.416667),
      map: map,
      title: 'Click me',
      
    });

		 var marker = new google.maps.Marker({
	      position: new google.maps.LatLng(29.036667, 33.459167),
	      map: map,
	      title: 'Click me',

	    });

    // Creating an InfoWindow with the content text: "Hello World"
    var infowindow = new google.maps.InfoWindow({
      content: 'Wadi El Hol - This is where it all began!'
    });

    // Adding a click event to the marker
    google.maps.event.addListener(marker, 'click', function() {
      // Calling the open method of the infoWindow
      infowindow.open(map, marker);
    });

  };
})();

// End Google Maps ****************************************
