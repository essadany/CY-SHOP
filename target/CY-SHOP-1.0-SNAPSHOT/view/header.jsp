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
							<li><a href="#"><i class="fa fa-phone"></i> +33 652143624</a></li>
							<li><a href="#"><i class="fa fa-envelope"></i> cy-shop@gmail.com</a></li>
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
				</div>
				<div class="col-sm-8">
					<div class="shop-menu pull-right">
						<ul class="nav navbar-nav">
							<%if(clt!=null && clt.getCompteByLogin().getRole().equals("client")){%>
							<li><a href="/CY_SHOP_war_exploded/view/mescommandes.jsp"><i class="fa fa-user"></i>Bonjour <%=clt.getNom()%></a></li>
							<li><a href="/CY_SHOP_war_exploded/view/checkout.jsp"><i class="fa fa-crosshairs"></i> Gérer mes commandes</a></li>
							<%} else if(clt!=null && clt.getCompteByLogin().getRole().equals("manager")){%>
							<li><a href="/CY_SHOP_war_exploded/view/mescommandes.jsp"><i class="fa fa-user"></i>Bonjour <%=clt.getNom()%></a></li>
							<li><a href="/CY_SHOP_war_exploded/view/formAddProduit.jsp"><i class="fa-solid fa-cart-plus"></i>Ajouter un produit</a></li>
							<li><a href="/CY_SHOP_war_exploded/view/adminPanel.jsp"><i class="fa fa-gears"></i>Gerer les droits</a></li>
							<%}%>


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
					<div class="mainmenu pull-left">
						<ul class="nav navbar-nav collapse navbar-collapse">
							<li><a href="/CY_SHOP_war_exploded/index.jsp" class="active">Accueil</a></li>
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