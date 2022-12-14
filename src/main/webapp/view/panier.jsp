<%@ page import="com.ecommerce.metier.Panier" %>
<%@ page import="com.ecommerce.metier.LignePanier" %>
<%@ page import="com.ecommerce.metier.Produit" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>


<section id="cart_items">
    <div class="container">
        <div class="breadcrumbs">
            <ol class="breadcrumb">
                <li><a href="#">Home</a></li>
                <li class="active">Shopping Cart</li>
            </ol>
        </div>
        <%
            if(session.getAttribute("panier")==null){
        %>
        <h2>Votre panier est encore vide</h2>
        <%
        }else{
            Panier panier=(Panier)session.getAttribute("panier");

        %>
        <div class="table-responsive cart_info">
            <table class="table table-condensed">
                <thead>
                <tr class="cart_menu">
                    <td class="image">Produit</td>
                    <td class="description"></td>
                    <td class="price">Prix</td>
                    <td class="quantity">Quantite</td>
                    <td class="total">Total</td>
                    <td></td>
                </tr>
                </thead>
                <tbody>
                <%for(LignePanier lp:panier.getItems()){

                    Produit p=lp.getProduit();
                %>
                <tr>
                    <td class="cart_product">
                        <a href=""><img src="/CY_SHOP_war_exploded/images/produit/<%=p.getImagesByIdP().get(0).getUrl()%>" width="50px" height="50px" alt=""></a>
                    </td>
                    <td class="cart_description">
                        <h4><a href=""><%=p.getLibelle()%></a></h4>

                    </td>
                    <td class="cart_price">
                        <p>$<%=p.getPrix()%></p>
                    </td>
                    <td class="cart_quantity">
                        <div class="cart_quantity_button">
                            <a class="cart_quantity_up" href="/CY_SHOP_war_exploded/GererPanier?action=augqte&idp=<%=p.getIdP()%>"> + </a>
                            <input class="cart_quantity_input" type="text" name="quantity" value="<%=lp.getQte()%>" autocomplete="off" size="2">
                            <a class="cart_quantity_down" href="/CY_SHOP_war_exploded/GererPanier?action=dimqte&idp=<%=p.getIdP()%>"> - </a>
                        </div>
                    </td>
                    <td class="cart_total">
                        <p class="cart_total_price">$<%=lp.getQte()*p.getPrix()%></p>
                    </td>
                    <td class="cart_delete">
                        <a class="cart_quantity_delete" href="/CY_SHOP_war_exploded/GererPanier?action=supp&idp=<%=p.getIdP()%>"><i class="fa fa-times"></i></a>
                    </td>
                </tr>

                <%}%>
                </tbody>
            </table>
        </div>
    </div>
</section> <!--/#cart_items-->

<section id="do_action">
    <div class="container">
        <div class="row">
            <div class="col-sm-6">
                <div class="total_area">
                    <ul>
                        <li>Le sous total du panier <span>$<%=panier.total()%></span></li>
                        <li>Free d'expedition <span><%=panier.fraisexpedition()%></span></li>
                        <li>Total <span>$<%=panier.fraisexpedition()+panier.total()%></span></li>
                    </ul>
                    <a class="btn btn-default update" href="">Update</a>
                    <a href="/CY_SHOP_war_exploded/view/checkout.jsp"class="btn btn-default check_out" href="">Check Out</a>
                </div>
            </div>
        </div>
    </div>
</section><!--/#do_action-->
<%}%>


<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>