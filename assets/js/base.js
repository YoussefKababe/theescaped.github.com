$(document).ready(function() {
	var loc = window.location.href;
	$("#filter li a").each(function() {
  		// This get the fourth element after splitting the URL, 
  		// which should evaluate to the category name. This is done to force the category link to stay highlighted
  		// when visiting posts.
  		// There is for sure a better way, but this is my first ever jQuery script. 
  		if(this.href.split("/")[3] == loc.split("/")[3]) {
     		$(this).addClass('current');
  		}
	});
});
