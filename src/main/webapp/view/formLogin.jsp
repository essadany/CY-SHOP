<%--
  Created by IntelliJ IDEA.
  User: CYTech Student
  Date: 11/6/2022
  Time: 8:12 PM
  To change this template use File | Settings | File Templates.
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>

<div class="container">
    <div class="row">
        <div class="col-sm-4 col-sm-offset-1">
            <div class="login-form"><!--login form-->
                <%
                    if(request.getAttribute("msg")!=null){

                %>
                <h3 style="color: red"><%=request.getAttribute("msg")%></h3>
                <%
                    }
                %>
                <h2>Se connecter a votre compte</h2>
                <form action="/CY_SHOP_war_exploded/Login" method="post">
                    <input type="email" name="email" placeholder="Email Address" required=""/>
                    <input type="password" name="mdp" placeholder="mot de passe" required=""/>
                    <span>
								<input type="checkbox" class="checkbox">
								Restez connecte
							</span>
                    <button type="submit" class="btn btn-default">Login</button>
                </form>
            </div><!--/login form-->
        </div>
        <div class="col-sm-1">
            <h2 class="or">Ou</h2>
        </div>
        <div class="col-sm-4">
            <div class="signup-form"><!--sign up form-->
                <h2>Nouvel client? inscrivez vous?</h2>
                <form action="/CY_SHOP_war_exploded/Inscription" method="post">
                    <input type="text" name="nom" placeholder="Nom" required=""/>
                    <input type="text" name="prenom" placeholder="Prenom" required=""/>
                    <input type="email" name="email" placeholder="Email Address" required=""/>
                    <input type="password" name="mdp" placeholder="Password" required=""/>
                    <button type="submit" class="btn btn-default">S'inscrire</button>
                </form>
            </div><!--/sign up form-->
        </div>
    </div>
</div>
<!--/form-->

<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
