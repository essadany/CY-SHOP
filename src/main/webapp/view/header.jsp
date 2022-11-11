<%@ page import="com.ecommerce.metier.Client" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="">
	<meta name="author" content="">
	<title>Home | E-Shopper</title>
	<link href="/CY_SHOP_war_exploded/css/bootstrap.min.css" rel="stylesheet">
	<link href="/CY_SHOP_war_exploded/css/font-awesome.min.css" rel="stylesheet">
	<link href="/CY_SHOP_war_exploded/css/prettyPhoto.css" rel="stylesheet">
	<link href="/CY_SHOP_war_exploded/css/price-range.css" rel="stylesheet">
	<link href="/CY_SHOP_war_exploded/css/animate.css" rel="stylesheet">
	<link href="/CY_SHOP_war_exploded/css/main.css" rel="stylesheet">
	<link href="/CY_SHOP_war_exploded/css/responsive.css" rel="stylesheet">
	<!--[if lt IE 9]>
	<script src="/CY_SHOP_war_exploded/js/html5shiv.js"></script>
	<script src="/CY_SHOP_war_exploded/js/respond.min.js"></script>
	<![endif]-->
	<link rel="shortcut icon" href="/CY_SHOP_war_exploded/images/ico/favicon.ico">
	<link rel="apple-touch-icon-precomposed" sizes="144x144" href="/CY_SHOP_war_exploded/images/ico/apple-touch-icon-144-precomposed.png">
	<link rel="apple-touch-icon-precomposed" sizes="114x114" href="/CY_SHOP_war_exploded/images/ico/apple-touch-icon-114-precomposed.png">
	<link rel="apple-touch-icon-precomposed" sizes="72x72" href="/CY_SHOP_war_exploded/images/ico/apple-touch-icon-72-precomposed.png">
	<link rel="apple-touch-icon-precomposed" href="/CY_SHOP_war_exploded/images/ico/apple-touch-icon-57-precomposed.png">
</head><!--/head-->

<body>
<% Client clt=null;
	if(session.getAttribute("clt")!=null){
		clt=(Client) session.getAttribute("clt");
	}
%>
<header id="header"><!--header-->
	<div class="header_top"><!--header_top-->
		<div class="container">
			<div class="row">
				<div class="col-sm-6">
					<div class="contactinfo">
						<ul class="nav nav-pills">
							<li><a href="#"><i class="fa fa-phone"></i> +2 95 01 88 821</a></li>
							<li><a href="#"><i class="fa fa-envelope"></i> info@domain.com</a></li>
						</ul>
					</div>
				</div>
				<div class="col-sm-6">
					<div class="social-icons pull-right">
						<ul class="nav navbar-nav">
							<li><a href="#"><i class="fa fa-facebook"></i></a></li>
							<li><a href="#"><i class="fa fa-twitter"></i></a></li>
							<li><a href="#"><i class="fa fa-linkedin"></i></a></li>
							<li><a href="#"><i class="fa fa-dribbble"></i></a></li>
							<li><a href="#"><i class="fa fa-google-plus"></i></a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div><!--/header_top-->

	<div class="header-middle"><!--header-middle-->
		<div class="container">
			<div class="row">
				<div class="col-sm-4">
					<div class="logo pull-left">
						<a href="/CY_SHOP_war_exploded/index.jsp"><img src="/CY_SHOP_war_exploded/images/home/logo.png" alt="" /></a>
					</div>
					<div class="btn-group pull-right">
						<div class="btn-group">
							<button type="button" class="btn btn-default dropdown-toggle usa" data-toggle="dropdown">
								USA
								<span class="caret"></span>
							</button>
							<ul class="dropdown-menu">
								<li><a href="#">Canada</a></li>
								<li><a href="#">UK</a></li>
							</ul>
						</div>

						<div class="btn-group">
							<button type="button" class="btn btn-default dropdown-toggle usa" data-toggle="dropdown">
								DOLLAR
								<span class="caret"></span>
							</button>
							<ul class="dropdown-menu">
								<li><a href="#">Canadian Dollar</a></li>
								<li><a href="#">Pound</a></li>
							</ul>
						</div>
					</div>
				</div>
				<div class="col-sm-8">
					<div class="shop-menu pull-right">
						<ul class="nav navbar-nav">
							<%if(clt!=null){%>
							<li><a href="/CY_SHOP_war_exploded/view/mescommandes.jsp"><i class="fa fa-user"></i>Bonjour <%=clt.getNom()%></a></li>

							<%}%>
							<li><a href="#"><i class="fa fa-star"></i> Wishlist</a></li>
							<li><a href="/CY_SHOP_war_exploded/view/checkout.jsp"><i class="fa fa-crosshairs"></i> Checkout</a></li>
							<li><a href="/CY_SHOP_war_exploded/view/panier.jsp"><i class="fa fa-shopping-cart"></i> Panier</a></li>
							<%if(clt==null){%>
							<li><a href="/CY_SHOP_war_exploded/view/formLogin.jsp"><i class="fa fa-lock"></i> Login</a></li>
							<%}else{%>
							<li><a href="/CY_SHOP_war_exploded/Logout"><i class="fa fa-lock"></i> se deconnecter</a></li>
							<%}%>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div><!--/header-middle-->

	<div class="header-bottom"><!--header-bottom-->
		<div class="container">
			<div class="row">
				<div class="col-sm-9">
					<div class="navbar-header">
						<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
							<span class="sr-only">Toggle navigation</span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
						</button>
					</div>
					<div class="mainmenu pull-left">
						<ul class="nav navbar-nav collapse navbar-collapse">
							<li><a href="/CY_SHOP_war_exploded/index.jsp" class="active">Home</a></li>
							<li class="dropdown"><a href="#">Shop<i class="fa fa-angle-down"></i></a>
								<ul role="menu" class="sub-menu">
									<li><a href="/CY_SHOP_war_exploded/shop.html">Products</a></li>
									<li><a href="/CY_SHOP_war_exploded/product-details.html">Product Details</a></li>
									<li><a href="/CY_SHOP_war_exploded/checkout.html">Checkout</a></li>
									<li><a href="/CY_SHOP_war_exploded/cart.html">Cart</a></li>
									<li><a href="/CY_SHOP_war_exploded/login.html">Login</a></li>
								</ul>
							</li>
							<li class="dropdown"><a href="#">Blog<i class="fa fa-angle-down"></i></a>
								<ul role="menu" class="sub-menu">
									<li><a href="/CY_SHOP_war_exploded/blog.html">Blog List</a></li>
									<li><a href="/CY_SHOP_war_exploded/blog-single.html">Blog Single</a></li>
								</ul>
							</li>
							<%if(clt!=null && clt.getCompteByLogin().getRole().equals("manager")){%>
							<li class="dropdown"><a href="#">Panel de gestion<i class="fa fa-angle-down"></i></a>
								<ul role="menu" class="sub-menu">

									<li><a href="/CY_SHOP_war_exploded/view/formAddProduit.jsp">Ajouter produit</a></li>
									<li><a href="/CY_SHOP_war_exploded/view/listArticle.jsp">Gerer les promotions</a></li>
									<li><a href="/CY_SHOP_war_exploded/view/listecommandemanager.jsp">Gerer les commande</a></li>

								</ul>
							</li>
							<%}%>
							<li><a href="/CY_SHOP_war_exploded/contact-us.html">Contact</a></li>
						</ul>
					</div>
				</div>
				<div class="col-sm-3">
					<div class="search_box pull-right">
						<form action="/CY_SHOP_war_exploded/view/rechercher.jsp">
							<input type="text" name="mot"  placeholder="Search"/>
							<button type="submit" class="btn btn-outline-dark">recherhcer</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div><!--/header-bottom-->
</header><!--/header-->

</body>
</html>