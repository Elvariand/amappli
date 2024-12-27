<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<title>Votre panier</title>

<link href="https://api.mapbox.com/mapbox-gl-js/v2.15.0/mapbox-gl.css"
	rel="stylesheet" />
<link rel="stylesheet"
	href="<c:url value='/resources/bootstrap/bootstrap.min.css'/>" />
<link rel="stylesheet"
	href="<c:url value='/resources/css/amap/shopping-cart.css' />">
</head>


<body class="${cssStyle} light ${font}-title ${font}-button">

	<header class="fc-main bg-main">
		<jsp:include page="common/header-amap.jsp" />
	</header>
	<div id="map"></div>
	<div class="fc-main">
		<div class="main-div">
			<h1>Shopping Cart</h1>

			<div class="table-container">
				<table class="table">
					<thead>
						<tr>
							<th>Produits</th>
							<th></th>
							<th>Prix à l'unité</th>
							<th>Quantité</th>
							<th>Prix</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="item" items="${cart.shoppingCartItems}">
							<tr>
								<td>${item.shoppable.getImage()}</td>
								<td>${item.shoppable.getInfo()}</td>
								<td>${item.shoppable.getPrice()}</td>

								<td><form:form method="post"
										action="${pageContext.request.contextPath}/${tenancyAlias}/cart/${cart.shoppingCartId}/updateQuantity/${item.shoppingItemId}">
										<button class="btn btn-100" type="submit" name="action" value="decrease">-</button>
										<span>${item.getQuantity()}</span>
										<button class="btn btn-100" type="submit" name="action" value="increase">+</button>
									</form:form></td>

								<td>${item.totalPrice}</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
			<h2>Total: ${total}</h2>

		</div>
		<!-- Formulaire de test pour ajouter un article -> A SUPPRIMER -->
		<form:form method="post"
			action="${pageContext.request.contextPath}/${tenancyAlias}/cart/${cart.shoppingCartId}/add">
			<label for="shoppableId">Product ID:</label>
			<input type="text" name="shoppableId" id="shoppableId" required>
			<input type="hidden" name="shoppableType" value="ProductMock">
			<label for="quantity">Quantity:</label>
			<input type="number" name="quantity" id="quantity" required>
			<button type="submit">Add to Cart</button>
		</form:form>
	</div>
	<footer class="container-fluid fc-main bg-main">
		<jsp:include page="common/footer-amap.jsp" />
	</footer>

	<script
		src="<c:url value='/resources/bootstrap/bootstrap.bundle.min.js' />"></script>

	<script>
		const styleMapboxLight = "${mapStyleLight}"
		const styleMapboxDark = "${mapStyleDark}"

		/* 		REMPLACER par les coordinates -> à mettre en place dans la database du tenancy
		 const tenancyCity = "${tenancy.getAddress().getCity()}"
		 const tenancyPostCode = "${tenancy.getAddress().getPostCode()}" 
		 */
	</script>

<%-- 	<script
		src="<c:url value='/resources/js/common/mapbox/mapbox-gl.js' />"></script>
	<script src="<c:url value='/resources/js/common/mapbox/map.js' />"></script> --%>
	<script
		src="<c:url value='/resources/js/amap/theme-swap-for-amaps.js' />"></script>
</body>
</html>