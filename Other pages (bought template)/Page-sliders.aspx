﻿<!DOCTYPE HTML>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="author" content="Bootstrap-ecommerce by Vosidiy">

<title>UI KIT - Marketplace and Ecommerce html template</title>

<link rel="shortcut icon" type="image/x-icon" href="images/favicon.ico">

<!-- jQuery -->
<script src="js/jquery-2.0.0.min.js" type="text/javascript"></script>

<!-- Bootstrap4 files-->
<script src="js/bootstrap.bundle.min.js" type="text/javascript"></script>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>

<!-- Font awesome 5 -->
<link href="fonts/fontawesome/css/all.min.css" type="text/css" rel="stylesheet">


<!-- plugin: slickslider -->
<link href="plugins/slickslider/slick.css" rel="stylesheet" type="text/css" />
<link href="plugins/slickslider/slick-theme.css" rel="stylesheet" type="text/css" />
<script src="plugins/slickslider/slick.min.js"></script>

<!-- plugin: owl carousel  -->
<link href="plugins/owlcarousel/assets/owl.carousel.css" rel="stylesheet">
<link href="plugins/owlcarousel/assets/owl.theme.default.css" rel="stylesheet">
<script src="plugins/owlcarousel/owl.carousel.min.js"></script>

<!-- ui style -->
<link href="css/ui.css" rel="stylesheet" type="text/css"/>
<link href="css/responsive.css" rel="stylesheet" />

<!-- ui javascript -->
<script src="js/script.js" type="text/javascript"></script>

<script type="text/javascript">
/// some script

// jquery ready start
$(document).ready(function() {
	// jQuery code




    /////////////////  items slider. /plugins/slickslider/
    if ($('.slider-banner-slick').length > 0) { // check if element exists
        $('.slider-banner-slick').slick({
              infinite: true,
              autoplay: true,
              slidesToShow: 1,
              dots: false,
              prevArrow: '<button type="button" class="slick-prev"><i class="fa fa-chevron-left"></i></button>',
           	  nextArrow: '<button type="button" class="slick-next"><i class="fa fa-chevron-right"></i></button>',
        });
    } // end if

     /////////////////  items slider. /plugins/slickslider/
    if ($('.slider-custom-slick').length > 0) { // check if element exists
        $('.slider-custom-slick').slick({
              infinite: true,
              slidesToShow: 2,
              dots: true,
              prevArrow: $('.slick-prev-custom'),
              nextArrow: $('.slick-next-custom')
        });
    } // end if

  

    /////////////////  items slider. /plugins/slickslider/
    if ($('.slider-items-slick').length > 0) { // check if element exists
        $('.slider-items-slick').slick({
            infinite: true,
            swipeToSlide: true,
            slidesToShow: 4,
            dots: true,
            slidesToScroll: 2,
            prevArrow: '<button type="button" class="slick-prev"><i class="fa fa-chevron-left"></i></button>',
           	nextArrow: '<button type="button" class="slick-next"><i class="fa fa-chevron-right"></i></button>',
            responsive: [
                {
                    breakpoint: 768,
                    settings: {
                        slidesToShow: 2
                    }
                },
                {
                    breakpoint: 640,
                    settings: {
                        slidesToShow: 1
                    }
                }
            ]
        });
    } // end if

    

    /////////////////  items slider. /plugins/owlcarousel/
    if ($('.slider-banner-owl').length > 0) { // check if element exists
        $('.slider-banner-owl').owlCarousel({
            loop:true,
            margin:0,
            items: 1,
            dots: false,
            nav:true,
            navText: ["<i class='fa fa-chevron-left'></i>", "<i class='fa fa-chevron-right'></i>"],
        });
    } // end if 

    /////////////////  items slider. /plugins/owlslider/
    if ($('.slider-items-owl').length > 0) { // check if element exists
        $('.slider-items-owl').owlCarousel({
            loop:true,
            margin:10,
            nav:true,
            navText: ["<i class='fa fa-chevron-left'></i>", "<i class='fa fa-chevron-right'></i>"],
            responsive:{
                0:{
                    items:1
                },
                640:{
                    items:3
                },
                1024:{
                    items:4
                }
            }
        })
    } // end if

    /////////////////  items slider. /plugins/owlcarousel/
    if ($('.slider-custom-owl').length > 0) { // check if element exists
        var slider_custom_owl = $('.slider-custom-owl');
        slider_custom_owl.owlCarousel({
            loop: true,
            margin:15,
            items: 2,
            nav: false,
        });

        // for custom navigation
        $('.owl-prev-custom').click(function(){
            slider_custom_owl.trigger('prev.owl.carousel');
        });

        $('.owl-next-custom').click(function(){
           slider_custom_owl.trigger('next.owl.carousel');
        });

    } // end if 



}); 
// jquery end
</script>

</head>
<body>

<header class="section-header">
<section class="header-main border-bottom">
<div class="container">
	<a href="http://bootstrap-ecommerce.com" class="brand-wrap"><img class="logo" src="images/logo.png"></a>
</div> <!-- container.// -->
</section>
</header> <!-- section-header.// -->

<section class="section-content padding-y">
<div class="container">
<h4>Basic bootstrap sliders</h4>

<div class="row">
	<aside class="col-md-6">
<!-- ================== COMPONENT SLIDER  BOOTSTRAP  ==================  -->
<div id="carousel1_indicator" class="carousel slide" data-ride="carousel">
  <ol class="carousel-indicators">
    <li data-target="#carousel1_indicator" data-slide-to="0" class="active"></li>
    <li data-target="#carousel1_indicator" data-slide-to="1"></li>
    <li data-target="#carousel1_indicator" data-slide-to="2"></li>
  </ol>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img class="d-block w-100" src="images/banners/slide1.jpg" alt="First slide"> 
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="images/banners/slide2.jpg" alt="Second slide">
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="images/banners/slide3.jpg" alt="Third slide">
    </div>
  </div>
  <a class="carousel-control-prev" href="#carousel1_indicator" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carousel1_indicator" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div> 
<!-- ==================  COMPONENT SLIDER BOOTSTRAP end.// ==================  .// -->	
<br><br>	
	</aside> <!-- col.// -->
	<aside class="col-md-6">
<!-- ================ COMPONENT SLIDER  BOOTSTRAP FADE ====================  -->
<div id="carousel2_indicator" class="carousel slide carousel-fade" data-ride="carousel">
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img class="d-block w-100" src="images/banners/slide1.jpg" alt="First slide">
      <article class="carousel-caption d-none d-md-block">
	    <h5>First slide label</h5>
	    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
		tempor incididunt.</p>
	  </article> <!-- carousel-caption .// -->
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="images/banners/slide2.jpg" alt="Second slide">
      <article class="carousel-caption d-none d-md-block">
	    <h5>Second slide label</h5>
	    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
		tempor incididunt.</p>
	  </article> <!-- carousel-caption .// -->
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="images/banners/slide3.jpg" alt="Third slide">
      <article class="carousel-caption d-none d-md-block">
	    <h5>Third slide label</h5>
	    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
		tempor incididunt</p>
	  </article> <!-- carousel-caption .// -->
    </div>
  </div>
  <a class="carousel-control-prev" href="#carousel2_indicator" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carousel2_indicator" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div> 
<!-- ==================  COMPONENT SLIDER  BOOTSTRAP FADE end .// ==================  -->
<br><br>	
	</aside>
</div> <!-- row.// -->


<div class="row">
	<aside class="col-md-6">
<h4>Slick slider banner</h4>
<!-- ============== COMPONENT SLIDER SINGLE SLICK  ============= -->
<div class="slider-banner-slick">
	<div class="item-slide">
		<img src="images/banners/slide1.jpg">
	</div>
	<div class="item-slide">
		<img src="images/banners/slide2.jpg">
	</div>
	<div class="item-slide">
		<img src="images/banners/slide3.jpg">
	</div>
</div>
<!-- ============== COMPONENT SLIDER SINGLE SLICK .end // ============= -->
<br><br>
	</aside> <!-- col.// -->
	<aside class="col-md-6">
<h4>Owl slider banner</h4>
<!-- ============== COMPONENT SLIDER SINGLE OWL  ============= -->
<div class="slider-banner-owl owl-carousel owl-theme">
	<div class="item-slide">
		<img src="images/banners/slide1.jpg">
	</div>
	<div class="item-slide">
		<img src="images/banners/slide2.jpg">
	</div>
	<div class="item-slide">
		<img src="images/banners/slide3.jpg">
	</div>
</div>
<!-- ============== COMPONENT SLIDER SINGLE OWL .end // ============= -->
<br><br>
	</aside> <!-- col.// -->
</div>


<h4>Slick slider items</h4>
<!-- ============== COMPONENT SLIDER ITEMS SLICK  ============= -->
<div class="slider-items-slick row" data-slick='{"slidesToShow": 4, "slidesToScroll": 1}'>
	<div class="item-slide p-2">
<figure class="card card-product-grid mb-0">
	<div class="img-wrap"> 
		<span class="badge badge-danger"> NEW </span>
		<img src="images/items/1.jpg">
	</div>
	<figcaption class="info-wrap text-center">
		<h6 class="title text-truncate"><a href="#">First item name</a></h6>
	</figcaption>
</figure> <!-- card // -->
	</div>
	<div class="item-slide p-2">
<figure class="card card-product-grid  mb-0">
	<div class="img-wrap"> <img src="images/items/2.jpg"> </div>
	<figcaption class="info-wrap text-center">
		<h6 class="title text-truncate"><a href="#">Second item name</a></h6>
	</figcaption>
</figure> <!-- card // -->
	</div>
	<div class="item-slide p-2">
<figure class="card card-product-grid  mb-0">
	<div class="img-wrap"> <img src="images/items/3.jpg"> </div>
	<figcaption class="info-wrap text-center">
		<h6 class="title text-truncate"><a href="#">Third item name</a></h6>
	</figcaption>
</figure> <!-- card // -->
	</div>
	<div class="item-slide p-2">
<figure class="card card-product-grid  mb-0">
	<div class="img-wrap"> <img src="images/items/4.jpg"> </div>
	<figcaption class="info-wrap text-center">
		<h6 class="title text-truncate"><a href="#">Good item name</a></h6>
	</figcaption>
</figure> <!-- card // -->
	</div>
	<div class="item-slide p-2">
<figure class="card card-product-grid  mb-0">
	<div class="img-wrap"> <img src="images/items/5.jpg"> </div>
	<figcaption class="info-wrap text-center">
		<h6 class="title text-truncate"><a href="#">Another item name</a></h6>
	</figcaption>
</figure> <!-- card // -->
	</div>
	<div class="item-slide p-2">
<figure class="card card-product-grid  mb-0">
	<div class="img-wrap"> <img src="images/items/3.jpg"> </div>
	<figcaption class="info-wrap text-center">
		<h6 class="title text-truncate"><a href="#">Third item name</a></h6>
	</figcaption>
</figure> <!-- card // -->
	</div>
	<div class="item-slide p-2">
<figure class="card card-product-grid  mb-0">
	<div class="img-wrap"> <img src="images/items/4.jpg"> </div>
	<figcaption class="info-wrap text-center">
		<h6 class="title text-truncate"><a href="#">Good item name</a></h6>
	</figcaption>
</figure> <!-- card // -->
	</div>
</div>
<!-- ============== COMPONENT SLIDER ITEMS SLICK .end // ============= -->
<br><br>


<h4>Owl slider items</h4>
<!-- ============== COMPONENT SLIDER ITEMS OWL  ============= -->
<div class="slider-items-owl owl-carousel owl-theme">
	<div class="item-slide">
<figure class="card card-product-grid">
	<div class="img-wrap"> 
		<span class="badge badge-danger"> New </span>
		<img src="images/items/1.jpg"> 
	</div>
	<figcaption class="info-wrap text-center">
		<h6 class="title text-truncate"><a href="#">First item name</a></h6>
	</figcaption>
</figure> <!-- card // -->
	</div>
	<div class="item-slide">
<figure class="card card-product-grid">
	<div class="img-wrap"> <img src="images/items/2.jpg"> </div>
	<figcaption class="info-wrap text-center">
		<h6 class="title text-truncate"><a href="#">Second item name</a></h6>
	</figcaption>
</figure> <!-- card // -->
	</div>
	<div class="item-slide">
<figure class="card card-product-grid">
	<div class="img-wrap"> <img src="images/items/3.jpg"> </div>
	<figcaption class="info-wrap text-center">
		<h6 class="title text-truncate"><a href="#">Third item name</a></h6>
	</figcaption>
</figure> <!-- card // -->
	</div>
	<div class="item-slide">
<figure class="card card-product-grid">
	<div class="img-wrap"> <img src="images/items/4.jpg"> </div>
	<figcaption class="info-wrap text-center">
		<h6 class="title text-truncate"><a href="#">Good item name</a></h6>
	</figcaption>
</figure> <!-- card // -->
	</div>
	<div class="item-slide">
<figure class="card card-product-grid">
	<div class="img-wrap"> <img src="images/items/5.jpg"> </div>
	<figcaption class="info-wrap text-center">
		<h6 class="title text-truncate"><a href="#">Another item name</a></h6>
	</figcaption>
</figure> <!-- card // -->
	</div>
	<div class="item-slide">
<figure class="card card-product-grid">
	<div class="img-wrap"> <img src="images/items/3.jpg"> </div>
	<figcaption class="info-wrap text-center">
		<h6 class="title text-truncate"><a href="#">Third item name</a></h6>
	</figcaption>
</figure> <!-- card // -->
	</div>
	<div class="item-slide">
<figure class="card card-product-grid">
	<div class="img-wrap"> <img src="images/items/4.jpg"> </div>
	<figcaption class="info-wrap text-center">
		<h6 class="title text-truncate"><a href="#">Good item name</a></h6>
	</figcaption>
</figure> <!-- card // -->
	</div>
</div>
<!-- ============== COMPONENT SLIDER ITEMS OWL .end // ============= -->
<br><br>




<div class="row">
	<aside class="col-md-6">
<!-- ============== COMPONENT SLIDER CUSTOM  ============= -->


<div class="btn-group  float-right">
  <button type="button" class="btn btn-primary slick-prev-custom"> <i class="fa fa-chevron-left"></i> </button>
  <button type="button" class="btn btn-primary slick-next-custom"> <i class="fa fa-chevron-right"></i> </button>
</div>

<h4>Slick custom control</h4>
<hr>
<div class="slider-custom-slick row">
	<div class="item-slide p-2">
<figure class="card card-product-grid">
	<div class="img-wrap"> <img src="images/items/1.jpg"> </div>
	<figcaption class="info-wrap text-center">
		<h6 class="title text-truncate"> <a href="#">First item name</a></h6>
	</figcaption>
</figure> <!-- card // -->
	</div>
	<div class="item-slide p-2">
<figure class="card card-product-grid">
	<div class="img-wrap"> <img src="images/items/2.jpg"> </div>
	<figcaption class="info-wrap text-center">
		<h6 class="title text-truncate"><a href="#">Second item name</a></h6>
	</figcaption>
</figure> <!-- card // -->
	</div>
	<div class="item-slide p-2">
<figure class="card card-product-grid">
	<div class="img-wrap"> <img src="images/items/3.jpg"> </div>
	<figcaption class="info-wrap text-center">
		<h6 class="title text-truncate"><a href="#">Third item name</a></h6>
	</figcaption>
</figure> <!-- card // -->
	</div>
	<div class="item-slide p-2">
<figure class="card card-product-grid">
	<div class="img-wrap"> <img src="images/items/4.jpg"> </div>
	<figcaption class="info-wrap text-center">
		<h6 class="title text-truncate"><a href="#">Good item name</a></h6>
	</figcaption>
</figure> <!-- card // -->
	</div>
</div> <!-- slider-items-slick.// -->
<!-- ============== COMPONENT SLIDER CUSTOM .end // ============= -->

	</aside> <!-- col.// -->
	<aside class="col-md-6">
<!-- ============== COMPONENT SLIDER CUSTOM 2  ============= -->
<div class="btn-group  float-right">
  <button type="button" class="btn btn-primary owl-prev-custom"> <i class="fa fa-chevron-left"></i> </button>
  <button type="button" class="btn btn-primary owl-next-custom"> <i class="fa fa-chevron-right"></i> </button>
</div>

<h4>Owl custom control</h4>
<hr>
<div class="slider-custom-owl owl-carousel owl-theme">
	<div class="item-slide">
<figure class="card card-product-grid">
	<div class="img-wrap"> <img src="images/items/1.jpg"> </div>
	<figcaption class="info-wrap text-center">
		<h6 class="title text-truncate"> <a href="#">First item name</a></h6>
	</figcaption>
</figure> <!-- card // -->
	</div>
	<div class="item-slide">
<figure class="card card-product-grid">
	<div class="img-wrap"> <img src="images/items/2.jpg"> </div>
	<figcaption class="info-wrap text-center">
		<h6 class="title text-truncate"><a href="#">Second item name</a></h6>
	</figcaption>
</figure> <!-- card // -->
	</div>
	<div class="item-slide">
<figure class="card card-product-grid">
	<div class="img-wrap"> <img src="images/items/3.jpg"> </div>
	<figcaption class="info-wrap text-center">
		<h6 class="title text-truncate"><a href="#">Third item name</a></h6>
	</figcaption>
</figure> <!-- card // -->
	</div>
	<div class="item-slide">
<figure class="card card-product-grid">
	<div class="img-wrap"> <img src="images/items/4.jpg"> </div>
	<figcaption class="info-wrap text-center">
		<h6 class="title text-truncate"><a href="#">Good item name</a></h6>
	</figcaption>
</figure> <!-- card // -->
	</div>
</div> <!-- slider-items-owl.// -->
<!-- ============== COMPONENT SLIDER CUSTOM 2  ============= -->
	</aside> <!-- col.// -->
</div>




</div> <!-- container .//  -->
</section>
<!-- ========================= SECTION CONTENT END// ========================= -->

<!-- ========================= FOOTER ========================= -->
<footer class="section-footer border-top padding-y">
	<div class="container">
		<p class="float-md-right"> 
			&copy Copyright 2019 All rights reserved
		</p>
		<p>
			<a href="#">Terms and conditions</a>
		</p>
	</div><!-- //container -->
</footer>
<!-- ========================= FOOTER END // ========================= -->


</body>
</html>