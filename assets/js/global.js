(function ($) {

	$(window).scroll(function() {
		if ($(".navbar").offset().top > 50) {
			$(".navbar-fixed-top").addClass("top-nav-collapse");
		} else {
			$(".navbar-fixed-top").removeClass("top-nav-collapse");
		}
	});

	$('.navbar-custom #searchButton').click(function() {
            $('.navbar-custom .searchField').toggle(700);
            $('.navbar-custom #resultarea').toggle(700);
    });

})(jQuery);