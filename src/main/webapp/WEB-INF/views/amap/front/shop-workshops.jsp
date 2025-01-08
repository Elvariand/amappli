<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String currentMainMenu = "workshops"; // Détermine la rubrique active
String currentPage = "workshops"; // Détermine la sous-rubrique active
request.setAttribute("currentMainMenu", currentMainMenu);
request.setAttribute("currentPage", currentPage);
%>
<!DOCTYPE html>
<html lang="fr">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Ateliers</title>
<link href="<c:url value='/resources/bootstrap/bootstrap.min.css' />"
	rel="stylesheet">
<link href="<c:url value='/resources/css/common/utils.css' />"
	rel="stylesheet">
<link href="<c:url value='/resources/css/amap/shop.css' />"
	rel="stylesheet">
		<style>
	#successMessage {
    transition: opacity 0.5s ease;
}

#successMessage.hidden {
    opacity: 0;
}
	</style>
</head>
<body class="row ${cssStyle} light ${font}-title ${font}-button">
	<!-- Header -->
	<header class="fc-main bg-main">
		<jsp:include page="common/header-amap.jsp" />
	</header>
	<jsp:include page="../front/common/sidebarUser.jsp" />
	<div id="map" class="p-0"></div>

	<div class="content col fc-main">
		<div class="container mt-4">
			<div
				class="row-controls d-flex justify-content-between align-items-center mx-auto"
				style="max-width: 95%;">
				<!-- Trier par -->
				<div class="d-flex align-items-center">
					<label for="sortByWorkshops"
						class="me-2 fw-400 fs-5 text-nowrap fc-main">Trier par</label> <select
						id="sortByWorkshops"
						class="form-select custom-select border-main w-auto">
						<option value="name">Nom</option>
						<option value="workshopDateTime" class="d-none d-md-block">Date</option>
						<option value="priceDesc" class="d-none d-md-block">Prix
							décroissant</option>
						<option value="priceAsc" class="d-none d-md-block">Prix
							croissant</option>
					</select>
				</div>
								<c:if test="${not empty successMessage}">
    <div id="successMessage" class="alert alert-success text-center" role="alert">
        ${successMessage}
    </div>
</c:if>
				<!-- Barre de recherche -->
				<div class="d-flex align-items-center">
					<input type="text" id="searchBar"
						class="form-control custom-input border-300 w-auto"
						placeholder="Rechercher...">
				</div>
			</div>
			<br>
			
		<div class="container">
				<div class="row row-cols-2 row-cols-sm-3 row-cols-lg-4 g-4 mx-auto">
					<!-- 			<div class="row row-cols-2 row-cols-sm-3 row-cols-lg-4 g-4 mx-auto"> -->
				<c:if test="${not empty workshops}">
				<c:forEach var="workshop" items="${workshops}">
					<div class="col">
						<div class="card contract-card rounded-4 border-main bg-100 h-100">
							<c:if test="${not empty workshop.imageData}">
								<img class="card-img-top rounded-top"
									src="data:${workshop.imageType};base64,${workshop.imageData}"
									alt="Image de l'atelier">
							</c:if>
							<div class="card-body d-flex flex-column">
								<h3 class="card-title fw-bold fs-5 text-uppercase">${workshop.workshopName}</h3>
								<p class="card-text text-muted">${workshop.workshopDateTime}</p>
								<p class="card-text">${workshop.workshopDescription}</p>
								<p class="card-text text-end mt-auto">
									<em>${workshop.workshopDuration} minutes</em><br> <b>${workshop.workshopPrice}&euro;/personne</b>
								</p>
								<a
									href="<c:url value='/amap/${tenancyAlias}/shop/workshops/${workshop.id}' />"
									class="btn btn-main rounded-pill bg-main text-nowrap">Voir
									les détails</a>
									</div>
								</div>
							</div>
						</c:forEach>
					</c:if>
				</div>
			</div>
		</div>
	</div>



	<!-- Footer -->
	<footer class="fc-main bg-main">
		<jsp:include page="common/footer-amap.jsp" />
	</footer>
	<script>
		var styleMapboxLight = "${mapStyleLight}";
		var styleMapboxDark = "${mapStyleDark}";
		var latitude = "${latitude}"
		var longitude = "${longitude}"
	</script>
	<script
		src="<c:url value='/resources/bootstrap/bootstrap.bundle.min.js' />"
		type="text/javascript"></script>
	<script
		src="<c:url value='/resources/js/common/mapbox/mapbox-gl.js' />"></script>
	<script src="<c:url value='/resources/js/common/mapbox/map.js' />" type="text/javascript"></script>
	<script src="<c:url value='/resources/js/common/theme-swap.js' />"
		type="text/javascript"></script>
	
		type="text/javascript"></script>
	<script
		src="<c:url value='/resources/js/amap/shop-filter-workshop.js' />"
		type="text/javascript"></script>
		<script>
    document.addEventListener("DOMContentLoaded", function () {
        const successMessage = document.getElementById("successMessage");
        if (successMessage) {
            setTimeout(() => {
                successMessage.classList.add("hidden");
            }, 1000); // Ajout de la classe pour l'animation
            setTimeout(() => {
                successMessage.style.display = "none";
            }, 1500); // Masquer complètement après 1.5 seconde
        }
    });
</script>
</body>
</html>
