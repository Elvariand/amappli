<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String currentMainMenu = "products"; // Détermine la rubrique active
String currentPage = "products"; // Détermine la sous-rubrique active
request.setAttribute("currentMainMenu", currentMainMenu);
request.setAttribute("currentPage", currentPage);
%>
<!DOCTYPE html>
<html lang="fr">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Boutique des Paniers</title>
<link href="<c:url value='/resources/bootstrap/bootstrap.min.css' />"
	rel="stylesheet">
<link rel="stylesheet"
	href="<c:url value='/resources/css/amap/homePage.css' />">
<style>
body {
	background-color: #FAF8F6;

.product-card {
	background-color: #FFF;
	border: 1px solid #FFA570;
	border-radius: 24px;
	padding: 16px;
	text-align: center;
	transition: transform 0.2s;
	height: 100%;
	/* S'assure que toutes les cartes aient la même hauteur */
	display: flex;
	flex-direction: column;
	justify-content: space-between;
}

.product-card:hover {
	transform: scale(1.05);
}

.product-card img {
	width: 100%;
	height: 200px; /* Uniformise la hauteur des images */
	object-fit: cover;
	/* Conserve les proportions tout en remplissant l'espace */
	border-radius: 16px;
}

.product-card .btn {
	background-color: #FFA570;
	color: #FFF;
	border: none;
	margin-top: 12px;
}

.product-card .btn:hover {
	background-color: #FF8A50;
}
</style>
</head>
<body class="row theme-1 light">
<header class="fc-main bg-main">
		<!-- Inclusion du header -->
<jsp:include page="common/header.jsp" />
</header>
<jsp:include page="../front/common/sidebarUser.jsp"/>
<div class="container-fluid mt-5">
			<div class="row justify-content-center">
				<div class="col-lg-10">
										<div class="header-container">
							<h2 class="mb-4" style="font-weight: bold; text-align: left;">Produits artisanaux</h2>
						</div>
    <div class="row">

        <!-- Main Content -->
        <div class="col-12 col-md-9">
            <div class="d-flex justify-content-between align-items-center mb-4">
                <span>${products.size()} Items</span>
                <div class="d-flex align-items-center">
                    <label for="sortBy" class="me-2">Trier par</label>
                    <select id="sortBy" class="form-select me-3" style="width: auto;">
                        <option value="name">Nom</option>
                        <option value="priceAsc">Prix croissant</option>
                        <option value="priceDesc">Prix décroissant</option>
                    </select>
                    <input type="text" id="searchBar" class="form-control" placeholder="Rechercher..."
                        style="width: 200px;">
                </div>
            </div>

            <div class="row">
                <c:if test="${not empty products}">
                    <c:forEach var="product" items="${products}">
                        <div class="col-12 col-sm-6 col-lg-4 mb-4">
                            <div class="product-card">
                                <c:if test="${not empty product.imageData}">
                                    <img src="data:${product.imageType};base64,${product.imageData}"
                                        alt="Image du produit">
                                </c:if>
                                <h3 class="mt-3">${product.productName}</h3>
                                <p> Date d'expiration : ${product.expirationDate}</p>
                                <p>${product.productPrice}&euro;</p>
                                <a href="<c:url value='/${tenancyAlias}/shop/products/${product.id}' />"
                                    class="btn">Voir les détails</a>
                            </div>
                        </div>
                    </c:forEach>
                </c:if>
                <c:if test="${empty products}">
                    <div class="col-12">
                        <p class="text-center">Aucun produit disponible pour cette AMAP.</p>
                    </div>
                </c:if>
            </div>
        </div>
    </div>
</div>
</div>
</div>



	<!-- Inclure le footer -->
	<footer>
		<jsp:include page="common/footer.jsp" />
	</footer>
	<script
		src="<c:url value='/resources/bootstrap/bootstrap.bundle.min.js' />"></script>
</body>
</html>
