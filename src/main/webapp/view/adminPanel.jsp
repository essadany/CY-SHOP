
<%@ page import="com.ecommerce.metier.Produit" %>
<%@ page import="com.ecommerce.metier.Image" %>
<%@ page import="com.ecommerce.dao.HibernateUtil" %>
<%@ page import="com.ecommerce.metier.Categorie" %>
<%@ page import="java.util.List" %>
<%@ page import="javax.persistence.Query" %>
<%@ page import="org.hibernate.Session" %>
<%@ page import="javax.persistence.EntityManager" %>
<%@ page import="com.ecommerce.dao.HibernateSession" %>
<%@ page import="com.ecommerce.metier.Client" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>JSP Page</title>
</head><!--/head-->

<body>
<jsp:include page="header.jsp"></jsp:include><br><br>

	<section class="container row" style="text-align: center; margin-left: 200px;">
		<table style="margin-bottom: 50px;" class="col-sm-10" align="left" cellpadding="4" cellspacing="4">
			<tr bgcolor="#F7593A">
				<td><b>Id</b></td>
				<td><b>Mail</b></td>
				<td><b>Nom</b></td>
				<td><b>Prenom </b></td>
				<td><b>Tel</b></td>
				<td><b>Adresse</b></td>
				<td><b>Droit</b></td>
				<td><b>Date d'inscription</b></td>
			</tr>
			<%  HibernateUtil.beginTransaction();
				EntityManager s=HibernateUtil.getEntityManager();
				Query q=s.createQuery("Select c From Client c");
				List<Client> l=q.getResultList();
				for(Client c : l){%>
			<tr bgcolor="#E6DCDA">
				<td><%=c.getIdc()%></td>
				<td><%=c.getEmail()%></td>
				<td><%=c.getNom()%></td>
				<td><%=c.getPrenom()%></td>
				<td><%=c.getTel()%></td>
				<td><%=c.getEmail()%></td>
				<td><%=c.getDroit()%></td>
				<td><%=c.getRegDate()%></td>
				<%}%>
			</tr>
		</table><br><br>
                        <form class="col-sm-4" method="post" action="${pageContext.request.contextPath}/DroitClient">
                        <div class="text_box pull-left">
							<input type="text" placeholder="User ID" name="IDC"/>
						</div>
							<input type="hidden" name="droit" value="restricted">
                        <button type="submit" class="button_admin">Bloquer les commentaires</button><br>
						</form>

						<form class="col-sm-4" method="post" action="${pageContext.request.contextPath}/DroitClient">
						<div class="text_box pull-left">
								<input type="text" placeholder="User ID" name="IDCUn"/>
							</div>
							<input type="hidden" name="droit" value="Unrestricted">
							<button type="submit" class="button_admin">Débloquer les commentiares</button>
						</form>
		</section><br><br><br><br><br><br><br><br><br><br><br><br><br>
	<jsp:include page="footer.jsp"></jsp:include>



    <script src="js/jquery.js"></script>
	<script src="js/price-range.js"></script>
	<script src="js/jquery.scrollUp.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.prettyPhoto.js"></script>
    <script src="js/main.js"></script>
</body>
</html>