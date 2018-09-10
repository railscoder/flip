(function($) {
$(function() {

	$('nav.header__nav a:not(.js-play-video)').click(function(e) {
		var offset = $($(this).attr('href')).offset().top;
		$('html, body').animate({scrollTop: offset}, 500);
	});

	if ($('#slider').length) {
		$('#slider').slick({
			dots: true,
			dotsClass: 'slider__dots',
			prevArrow: '<button type="button" class="slider__prev">Предыдущий</button>',
			nextArrow: '<button type="button" class="slider__next">Следующий</button>',
		});
	}

	$('.js-play-video').magnificPopup({
		type: 'iframe',
		mainClass: 'mfp-fade',
		removalDelay: 160,
		preloader: false,
		fixedContentPos: true
	});

	$('.js-write-us').magnificPopup({
		type: 'inline',
		focus: '#write-us-name',
		mainClass: 'mfp-fade',
		removalDelay: 160,
		preloader: false,
		fixedContentPos: true
	});

	$.extend(true, $.magnificPopup.defaults, {
		tClose: 'Закрыть (Esc)'
	});

});
})(jQuery);