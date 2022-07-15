

$(document).ready(function($) {

	// Whole Script Strict Mode Syntax
	"use strict";

	// Loader JS Start
	$(window).ready(function(){
		$('.loader-box').fadeOut();
		$('body').removeClass('fixed');
   });
	// Loader JS End

	// Wow Animation JS Start
	new WOW().init(); 
	// Wow Animation JS Start

    // Sticky Header JS Start
	$(window).on( 'scroll', function(){
		if ($(window).scrollTop() >= 100) {
		  $('.site-header').addClass('sticky-header');
		 }
		 else {
		  $('.site-header').removeClass('sticky-header');
		 }
	});
	// Sticky Header JS End


	$('.domestic-package').slick({
		infinite: true,
		slidesToShow: 3,
		slidesToScroll: 1,
		prevArrow: '<button class="slick-arrow-team prev-arrow"><i class="fa fa-chevron-left" aria-hidden="true"></i></button>',
		nextArrow: '<button class="slick-arrow-team next-arrow"><i class="fa fa-chevron-right" aria-hidden="true"></i></button>',
		dots: true,
		arrows: false,
		autoplay: true,
		pauseOnHover: true,
		autoplaySpeed: 2000,
		responsive: [
		  {
			  breakpoint: 1200,
			  settings: {
				  slidesToShow: 4,
			  }
		  },
		  {
			  breakpoint: 992,
			  settings: {
				  slidesToShow: 3
			  }
		  },
		  {
			  breakpoint: 768,
			  settings: {
				  slidesToShow: 1
			  }
		  }
	  ]
	  });

	

	$('.domestic-destination').slick({
		infinite: true,
		slidesToShow:3,
		slidesToScroll: 1,
		prevArrow: '<button class="slick-arrow-team prev-arrow"><i class="fa fa-chevron-left" aria-hidden="true"></i></button>',
		nextArrow: '<button class="slick-arrow-team next-arrow"><i class="fa fa-chevron-right" aria-hidden="true"></i></button>',
		dots: false,
		arrows: true,
		autoplay: true,
		pauseOnHover: true,
		autoplaySpeed: 2000,
		responsive: [
		  {
			  breakpoint: 1200,
			  settings: {
				  slidesToShow: 4,
			  }
		  },
		  {
			  breakpoint: 992,
			  settings: {
				  slidesToShow: 3
			  }
		  },
		  {
			  breakpoint: 768,
			  settings: {
				  slidesToShow: 1
			  }
		  }
	  ]
	  });


	
	$('.international-package').slick({
		infinite: true,
		slidesToShow:3,
		slidesToScroll: 1,
		prevArrow: '<button class="slick-arrow-team prev-arrow"><i class="fa fa-chevron-left" aria-hidden="true"></i></button>',
		nextArrow: '<button class="slick-arrow-team next-arrow"><i class="fa fa-chevron-right" aria-hidden="true"></i></button>',
		dots: false,
		arrows: true,
		autoplay: true,
		pauseOnHover: true,
		autoplaySpeed: 2000,
		responsive: [
		  {
			  breakpoint: 1200,
			  settings: {
				  slidesToShow: 4,
			  }
		  },
		  {
			  breakpoint: 992,
			  settings: {
				  slidesToShow: 3
			  }
		  },
		  {
			  breakpoint: 768,
			  settings: {
				  slidesToShow: 1
			  }
		  }
	  ]
	  });

	


	  // Testimonial Slider



	$('.testim-slider').slick({
		infinite: true,
		slidesToShow:3,
		slidesToScroll: 1,
		prevArrow: '<button class="slick-arrow-team prev-arrow"><i class="fa fa-chevron-left" aria-hidden="true"></i></button>',
		nextArrow: '<button class="slick-arrow-team next-arrow"><i class="fa fa-chevron-right" aria-hidden="true"></i></button>',
		dots: true,
		arrows: false,
		autoplay: true,
		pauseOnHover: true,
		autoplaySpeed: 2000,
		responsive: [
		  {
			  breakpoint: 1200,
			  settings: {
				  slidesToShow: 4,
			  }
		  },
		  {
			  breakpoint: 992,
			  settings: {
				  slidesToShow: 3
			  }
		  },
		  {
			  breakpoint: 768,
			  settings: {
				  slidesToShow: 1
			  }
		  }
	  ]
	  });










	  // Scroll To Top JS Start
		$('#scroll-to-top').on('click', function() {
			$("html, body").animate({ scrollTop: 0 }, 800);
			return false;
		});
		$(window).on( 'scroll', function() {
			if ($(window).scrollTop() > 300) {
			$("#scroll-to-top").fadeIn(500);
			} else {
			$("#scroll-to-top").fadeOut(500);
			}
		});
		// Scroll To Top JS End

		// Toggle Menu Mobile JS Start
		$(".toggle-button").on( 'click', function(){
			$(".main-navigation").toggleClass('toggle-menu');
			$(".header-menu .black-shadow").fadeToggle();
		});
		$(".main-navigation ul li a").on( 'click', function(){
			$(".main-navigation").removeClass('toggle-menu');
			$(".header-menu .black-shadow").fadeOut();
		});
		$(".main-navigation ul li.sub-items>a").on( 'click', function(){
			$(".main-navigation").addClass('toggle-menu');
			$(".header-menu .black-shadow").stop();
		});
		$(".header-menu .black-shadow").on( 'click', function(){
			$(this).fadeOut();
			$(".main-navigation").removeClass('toggle-menu');
		});
		// Toggle Menu Mobile JS End

		// If Mobile Slider JS Start
		if ($(window).width() < 992) {

			// Submenu For Mobile JS Start
			$('body').on('click', '.main-navigation ul li.sub-items>a', function() {
				if (($(this).parent().hasClass('active-sub-menu'))) {
				$(this).parent().removeClass('active-sub-menu');
				$(this).parent().find('ul').slideUp();
				} else {
					$(this).parent().addClass('active-sub-menu');
					$(this).parent().find('ul').slideDown();
				}
			});
			// Submenu For Mobile JS End

		

				// Courses Slider For Mobile JS Start
				$('.pricing-slider').slick({
					infinite: true,
					slidesToShow: 2,
					slidesToScroll: 1,
					prevArrow: '<button class="slick-arrow prev-arrow color-arrow"><i class="fa fa-chevron-left"></i></button>',
					nextArrow: '<button class="slick-arrow next-arrow color-arrow"><i class="fa fa-chevron-right"></i></button>',
					dots: true,
					arrows: false,
					autoplay: false,
						autoplaySpeed: 2000,	
						responsive: [
						{
							breakpoint: 768,
							settings: {
								slidesToShow: 1
							}
						},
						{
							breakpoint: 576,
							settings: {
								slidesToShow: 1
							}
						}
					]	
				});
				// Courses Slider For Mobile JS End

				// Blog Slider For Mobile JS Start
				$('.blog-slider').slick({
					infinite: true,
					slidesToShow: 2,
					slidesToScroll: 1,
					prevArrow: '<button class="slick-arrow prev-arrow color-arrow"><i class="fa fa-chevron-left"></i></button>',
					nextArrow: '<button class="slick-arrow next-arrow color-arrow"><i class="fa fa-chevron-right"></i></button>',
					dots: true,
					arrows: false,
					autoplay: false,
						autoplaySpeed: 2000,	
						responsive: [
						{
							breakpoint: 768,
							settings: {
								slidesToShow: 1
							}
						},
						{
							breakpoint: 576,
							settings: {
								slidesToShow: 1
							}
						}
					]	
				});
				// blog Slider For Mobile JS End

				// Blog Slider For Mobile JS Start
				$('.academic-slider').slick({
					infinite: true,
					slidesToShow: 3,
					slidesToScroll: 1,
					prevArrow: '<button class="slick-arrow prev-arrow color-arrow"><i class="fa fa-chevron-left"></i></button>',
					nextArrow: '<button class="slick-arrow next-arrow color-arrow"><i class="fa fa-chevron-right"></i></button>',
					dots: true,
					arrows: false,
					autoplay: false,
						autoplaySpeed: 2000,	
						responsive: [
						{
							breakpoint: 768,
							settings: {
								slidesToShow: 1
							}
						},
						{
							breakpoint: 576,
							settings: {
								slidesToShow: 1
							}
						}
					]	
				});
				// blog Slider For Mobile JS End

		}
		// If Mobile Slider JS End

   
});