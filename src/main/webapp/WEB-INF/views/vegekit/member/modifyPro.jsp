<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>modifyPro</title>
	<link href="/resources/css/style.css" rel="stylesheet" type="text/css">
	
	    <link rel="stylesheet" type="text/css" href="/resources/fonts/_flaticon.css">
    
    
    <link href="https://fonts.googleapis.com/css?family=Poppins:200,300,400,500,600,700,800&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Lora:400,400i,700,700i&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Amatic+SC:400,700&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="/resources/css/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="/resources/css/animate.css">
    
    <link rel="stylesheet" href="/resources/css/owl.carousel.min.css">
    <link rel="stylesheet" href="/resources/css/owl.theme.default.min.css">
    <link rel="stylesheet" href="/resources/css/magnific-popup.css">

    <link rel="stylesheet" href="/resources/css/aos.css">

    <link rel="stylesheet" href="/resources/css/ionicons.min.css">
    <link rel="stylesheet" href="/resources/css/icomoon.min.css">

    <link rel="stylesheet" href="/resources/css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="/resources/css/jquery.timepicker.css">

    
    <link rel="stylesheet" href="/resources/css/flaticon.css">
    <link rel="stylesheet" href="/resources/css/icomoon.css">
    
    <link rel="stylesheet" href="/resources/css/bootstyle2.css">
    
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	  <script src="/resources/js/jquery.min.js"></script>
	  <script src="/resources/js/jquery-migrate-3.0.1.min.js"></script>
	  <script src="/resources/js/popper.min.js"></script>
	  <script src="/resources/js/bootstrap.min.js"></script>
	  <script src="/resources/js/jquery.easing.1.3.js"></script>
	  <script src="/resources/js/jquery.waypoints.min.js"></script>
	  <script src="/resources/js/jquery.stellar.min.js"></script>
	  <script src="/resources/js/owl.carousel.min.js"></script>
	  <script src="/resources/js/jquery.magnific-popup.min.js"></script>
	  <script src="/resources/js/aos.js"></script>
	  <script src="/resources/js/jquery.animateNumber.min.js"></script>
	  <script src="/resources/js/bootstrap-datepicker.js"></script>
	  <script src="/resources/js/scrollax.min.js"></script>
	  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
	  <script src="/resources/js/google-map.js"></script>
	  <script src="/resources/js/main.js"></script>
	
</head>
<body>
  <!-- 위에 초록색 바  -->
		<div class="py-1 bg-primary">
    	<div class="container">
    		<div class="row no-gutters d-flex align-items-start align-items-center px-md-0">
	    		<div class="col-lg-12 d-block">
		    		<div class="row d-flex">
		    			<div class="col-md pr-4 d-flex topper align-items-center">
					    	<div class="icon mr-2 d-flex justify-content-center align-items-center"><span class="icon-phone2"></span></div>
						    <span class="text">+82 1588-1234</span>
					    </div>
					    <div class="col-md pr-4 d-flex topper align-items-center">
					    	<div class="icon mr-2 d-flex justify-content-center align-items-center"><span class="icon-paper-plane"></span></div>
						    <span class="text">cs@vegekit.co.kr</span>
					    </div>
					    <div class="col-md-5 pr-4 d-flex topper align-items-center text-lg-right">
						    <span class="text">3-5 Business days delivery &amp; Free Returns</span>
					    </div>
				    </div>
			    </div>
		    </div>
		  </div>
    </div>
    
    <!-- 상단메뉴 바  -->
    <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
	    <div class="container">
	      <a class="navbar-brand" href="/vegekit/main">VEGEKIT</a>
	      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
	        <span class="oi oi-menu"></span> Menu
	      </button>

	      <div class="collapse navbar-collapse" id="ftco-nav">
	        <ul class="navbar-nav ml-auto">
	          <li class="nav-item active"><a href="/vegekit/main" class="nav-link">Home</a></li>
	          <li class="nav-item dropdown">
	          <li class="nav-item"><a href="/vegekit/shop/list" class="nav-link">SHOP</a></li>
				<sec:authorize access="isAnonymous()">
					<li class="nav-item"><a class="nav-link" onclick="window.location='/vegekit/common/login'">LOGIN</a></li>
				</sec:authorize>
				<sec:authorize access="isAuthenticated()">
					<form action="/logout" method="post" style="display: inline-block;">
						<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
						<li class="nav-item"><button>LOGOUT</button></li>
					</form>
				</sec:authorize>
				<sec:authorize access="isAnonymous()">
				<li class="nav-item"><a class="nav-link" onclick="window.location='/vegekit/common/login'">MYPAGE</a></li>
				</sec:authorize>
				<sec:authorize access="isAuthenticated()">
				<li class="nav-item"><a class="nav-link" onclick="window.location='/vegekit/member/mypage2'">MYPAGE</a></li>
					</sec:authorize>
					
				<sec:authorize access="isAnonymous()">	
	          <li class="nav-item cta cta-colored"><a href='/vegekit/common/login'class="nav-link"><span class="icon-shopping_cart"></span></a></li>
	          </sec:authorize>
				<sec:authorize access="isAuthenticated()">
	          <li class="nav-item cta cta-colored"><a href="/vegekit/shop/cart" class="nav-link"><span class="icon-shopping_cart"></span></a></li>
				</sec:authorize>

	        </ul>
	      </div>
	    </div>
	  </nav>
    <!-- END nav -->

	<br />
	<c:if test="${result == 1}">
		<table>
			<tr>
				<td>
					<sec:authentication property="principal.username" /> 님의 회원 정보가 수정되었습니다. 
				</td>
			</tr>
			<tr>
				<td>
					<button onclick="window.location='/vegekit/main'">메인</button>
					<button onclick="window.location='/vegekit/member/mypage2'">마이페이지</button>
				</td>
			</tr>
		</table>
	</c:if>
	<c:if test="${result != 1}">
		<script>
			alert("오류가 발생했습니다. 다시 시도해주세요.");
			history.go(-1);
		</script>
	</c:if>
	

</body>
</html>