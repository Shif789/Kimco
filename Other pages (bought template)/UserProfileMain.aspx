﻿<%@ Page Language="VB" AutoEventWireup="false" CodeFile="UserProfileMain.aspx.vb" Inherits="Community_UserProfileMain" %>

<!DOCTYPE HTML>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="pragma" content="no-cache" />
<meta http-equiv="cache-control" content="max-age=604800" />
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<title>Website title - bootstrap html template</title>

<link href="images/favicon.ico" rel="shortcut icon" type="image/x-icon">

<!-- jQuery -->
<script src="js/jquery-2.0.0.min.js" type="text/javascript"></script>

<!-- Bootstrap4 files-->
<script src="js/bootstrap.bundle.min.js" type="text/javascript"></script>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>

<!-- Font awesome 5 -->
<link href="fonts/fontawesome/css/all.min.css" type="text/css" rel="stylesheet">

<!-- custom style -->
<link href="css/ui.css" rel="stylesheet" type="text/css"/>
<link href="css/responsive.css" rel="stylesheet" media="only screen and (max-width: 1200px)" />

<!-- custom javascript -->
<script src="js/script.js" type="text/javascript"></script>

<script type="text/javascript">
/// some script

// jquery ready start
$(document).ready(function() {
	// jQuery code

}); 
// jquery end
</script>

</head>
<body>


<header class="section-header">
<section class="header-main border-bottom">
	<div class="container">
<div class="row align-items-center">
	<div class="col-lg-2 col-4">
		<a href= class="brand-wrap">
            <a href="HomePage.aspx" class="brand-wrap">
			<img class="logo" src="images/KOISEE.png">
		</a> <!-- brand-wrap.// -->
	</div>
	<div class="col-lg-6 col-sm-12">
		<form action="#" class="search">
			<div class="input-group w-100">
			    <input type="text" class="form-control" placeholder="Search">
			    <div class="input-group-append">
			      <button class="btn:hover btn-primary" type="submit">
			        <i class="fa fa-search"></i> Search
			      </button>
			    </div>
		    </div>
		</form> <!-- search-wrap .end// -->
	</div> <!-- col.// -->
	<div class="col-lg-4 col-sm-6 col-12">
		<div class="widgets-wrap float-md-right">
			<div class="widget-header  mr-3">
				<a href="#" class="icon icon-sm rounded-circle border"><i class="fa fa-shopping-cart"></i></a>
				<span class="badge badge-pill badge-danger notify">0</span>
			</div>
			<div class="widget-header icontext">
				<a href="#" class="icon icon-sm rounded-circle border"><i class="fa fa-user"></i></a>
				<div class="text">
					<span class="text-muted">Welcome!</span>
					<div> 
						<a href="SignIn.aspx">Sign in</a> |  
						<a href="Register.aspx"> Register</a>
					</div>
				</div>
			</div>

		</div> <!-- widgets-wrap.// -->
	</div> <!-- col.// -->
</div> <!-- row.// -->
	</div> <!-- container.// -->
</section> <!-- header-main .// -->
</header> <!-- section-header.// -->



<!-- ========================= SECTION PAGETOP ========================= -->
<section class="section-pagetop bg">
<div class="container">
	<h2 class="text-center">My Account</h2>


    
</div> <!-- container //  -->
</section>
<!-- ========================= SECTION INTRO END// ========================= -->

<!-- ========================= SECTION CONTENT ========================= -->
<section class="section-content padding-y">
<div class="container">

<div class="row">
	<aside class="col-md-3">
		<ul class="list-group">
			<a class="list-group-item active" href="#"> Account overview  </a>
			<a class="list-group-item" href="#"> My Orders </a>
			<a class="list-group-item" href="#"> My wishlist </a>
			<a class="list-group-item" href="#"> Return and refunds </a>
			<a class="list-group-item" href="#"> Settings </a>
			<a class="list-group-item" href="#"> My Selling Items </a>
			<a class="list-group-item" href="#"> Received orders </a>
            <a class="list-group-item" href="#"> My Vouchers </a>
            <a class="list-group-item" href="#"> ETC </a>
            <a class="list-group-item" href="#"> PLACE HOLDER </a>
        


		</ul>
	</aside> <!-- col.// -->
	<main class="col-md-9">

		<article class="card mb-3">
			<div class="card-body">
				
				<figure class="icontext">
						<div class="icon">
							<img class="rounded-circle img-sm border" src="images/avatars/avatar3.jpg">
						</div>
						<div class="text">
							<strong> Mr. Jackson Someone </strong> <br> 
							myloginname@gmail.com <br> 
							<a href="#">Edit</a>
						</div>
				</figure>
				<hr>
				<p>
					<i class="fa fa-map-marker text-muted"></i> &nbsp; My address:  
					 <br>
					Tashkent city, Street name, Building 123, House 321 &nbsp 
					<a href="#" class="btn-link"> Edit</a>
				</p>

				

				<article class="card-group">
					<figure class="card bg">
						<div class="p-3">
							 <h5 class="card-title">38</h5>
							<span>Orders</span>
						</div>
					</figure>
					<figure class="card bg">
						<div class="p-3">
							 <h5 class="card-title">5</h5>
							<span>Wishlists</span>
						</div>
					</figure>
					<figure class="card bg">
						<div class="p-3">
							 <h5 class="card-title">12</h5>
							<span>Awaiting delivery</span>
						</div>
					</figure>
					<figure class="card bg">
						<div class="p-3">
							 <h5 class="card-title">50</h5>
							<span>Delivered items</span>
						</div>
					</figure>
				</article>
				

			</div> <!-- card-body .// -->
		</article> <!-- card.// -->

		<article class="card  mb-3">
			<div class="card-body">
				<h5 class="card-title mb-4">Recent orders </h5>	

				<div class="row">
				<div class="col-md-6">
					<figure class="itemside  mb-3">
						<div class="aside"><img src="images/items/1.jpg" class="border img-sm"></div>
						<figcaption class="info">
							<time class="text-muted"><i class="fa fa-calendar-alt"></i> 12.09.2019</time>
							<p>Great item name goes here </p>
							<span class="text-warning">Pending</span>
						</figcaption>
					</figure>
				</div> <!-- col.// -->
				<div class="col-md-6">
					<figure class="itemside  mb-3">
						<div class="aside"><img src="images/items/2.jpg" class="border img-sm"></div>
						<figcaption class="info">
							<time class="text-muted"><i class="fa fa-calendar-alt"></i> 12.09.2019</time>
							<p>Machine for kitchen to blend </p>
							<span class="text-success">Departured</span>
						</figcaption>

				</div> <!-- col.// -->
			</div> <!-- row.// -->

			<a href="#" class="btn btn-outline-primary"> See all orders  </a>
			</div> <!-- card-body .// -->
		</article> <!-- card.// -->



        <!-- put another card here// -->

        <style>
.btn {
  background-color: RoyalBlue;
  border: none;
  color: white;
  padding: 12px 16px;
  font-size: 16px;
  cursor: pointer;
  margin-bottom:16px;
}

/* Darker background on mouse-over */
.btn:hover {
  background-color: RoyalBlue;
}
</style>

        
<button class="btn"><i class="fa fa-home"></i> Home</button>
<button class="btn"><i class="fa fa-newspaper"></i> News Feed</button>
<button class="btn"><i class="fa fa-comments"></i> Messages</button>
<button class="btn"><i class="fa fa-heart"></i> Favourite</button>
<button class="btn"><i class="fa fa-user-circle"></i> Profile</button>
        





	</main> <!-- col.// -->
</div>

</div> <!-- container .//  -->
</section>
<!-- ========================= SECTION CONTENT END// ========================= -->


<!-- ========================= FOOTER ========================= -->
<footer class="section-footer border-top padding-y">
	<div class="container">
		<p class="float-md-right"> 
			&copy Copyright 2021 KOISEE Sdn Bhd.All rights reserved
		</p>
		<p>
			<a href="#">Terms and conditions</a>
		</p>
	</div><!-- //container -->
</footer>
<!-- ========================= FOOTER END // ========================= -->



</body>
</html>