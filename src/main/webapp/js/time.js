(function ($) {
 "use strict";
//Set the date we're counting down to
	var countDownDate = new Date("Oct 10, 2019 15:37:25").getTime();

	// Update the count down every 1 second
	var x = setInterval(function() {

		// Get today's date and time
		var now = new Date().getTime();

		// Find the distance between now and the count down date
		var distance = countDownDate - now;

		// Time calculations for days, hours, minutes and seconds
		var days = Math.floor(distance / (1000 * 60 * 60 * 24));
		var hours = Math.floor((distance % (1000 * 60 * 60 * 24))
				/ (1000 * 60 * 60));
		var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
		var seconds = Math.floor((distance % (1000 * 60)) / 1000);

		// Display the result in the element with id="demo"
		$("#demo").html(days);
		$("#demo1").html(hours);
		$("#demo2").html(minutes);
		$("#demo3").html(seconds);
		$("#demo4").html(days);
		$("#demo5").html(hours);
		$("#demo6").html(minutes);
		$("#demo7").html(seconds);
		$("#demo8").html(days);
		$("#demo9").html(hours);
		$("#demo10").html(minutes);
		$("#demo11").html(seconds);
		if (distance < 0) {
			clearInterval(x);
			document.getElementById("demo").innerHTML = "EXPIRED";
		}
	}, 1000);
		
})(jQuery); 