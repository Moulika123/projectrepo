
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Food Court</title>


</head>
<body>
	<%@include file="header.jsp"%>

	<c:set var="images" value="${contextPath}/resources/carouselPics" />
	<c:set var="image" value="${contextPath}/resources" />



	<div id="myCarousel" class="carousel slide" data-ride="carousel">
		<div class="c-wrapper">
			<!-- Indicators -->
			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="1"></li>
				<li data-target="#myCarousel" data-slide-to="2"></li>
			</ol>

			<!-- Wrapper for slides -->
			<div class="carousel-inner">
				<div class="item active">
					<img src="${images}/slider1.jpg" alt="Pizza">
				</div>

				<div class="item">
					<img src="${images}/slider2.jpg" alt="Burger">
				</div>

				<div class="item">
					<img src="${images}/slider3.jpg" alt="Food quote">
				</div>
			</div>
		</div>


		<!-- Left and right controls -->
		<a class="left carousel-control" href="#myCarousel" data-slide="prev">
			<span class="glyphicon glyphicon-chevron-left"></span> <span
			class="sr-only">Previous</span>
		</a> <a class="right carousel-control" href="#myCarousel"
			data-slide="next"> <span
			class="glyphicon glyphicon-chevron-right"></span> <span
			class="sr-only">Next</span>
		</a>
	</div>

    <c:forEach items="${catlist}" var = "cat" begin="0" end="2">
	<div class="container">

		<h3>${cat.catName}</h3>

		<div class="row">
			<c:forEach items="${cat.products}" var="products" begin="0" end = "3">
			<div class="col-md-3" style="text-align: center">

					<a href="${contextPath}/productDisplay/${products.productId}"><img
						src="${image}/${products.productId}.jpg" class="img-thumbnail"></a>
					<h4>${products.productName}</h4>

				</div>
			</c:forEach>

		</div>
	</div>
	</c:forEach>


</body>
<%@include file="footer.jsp"%>
</html>
