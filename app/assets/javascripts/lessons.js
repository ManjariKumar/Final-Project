function initialize(latitude, longitude)
{
  	return function ()
    {
    	var image = 'images/map-marker.png';
	    var myLatLng = new google.maps.LatLng(latitude, longitude);
	    var mapProp = {
		    center:new google.maps.LatLng(latitude, longitude),
		    zoom:16,
		    mapTypeId:google.maps.MapTypeId.ROADMAP
		};
  		
  		var map = new google.maps.Map(document.getElementById("googleMap")
  ,mapProp);

  		var marker = new google.maps.Marker({
      		position: myLatLng,
		    map: map,
		  	icon: 'map-marker.png'
		});

        marker.setMap(map);
	}
}

google.maps.event.addDomListener(window, 'load', initialize);
