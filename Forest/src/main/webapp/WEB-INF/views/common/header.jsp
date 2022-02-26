<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<c:set var="path" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
    
<html>
    
<head>
  <meta charset="utf-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <title>${param.title}</title>
  <meta name="description" content="" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <meta name="robots" content="all,follow" />
  <!-- Price Slider Stylesheets -->
  <link rel="stylesheet" href="${path}/resources/vendor/nouislider/nouislider.css" />
  <!-- Google fonts - Playfair Display-->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Playfair+Display:400,400i,700" />
  <!-- Google fonts - Poppins-->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins:300,400,400i,700" />
  <!-- swiper-->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.4.1/css/swiper.min.css" />
  <!-- Magnigic Popup-->
  <link rel="stylesheet" href="${path}/resources/vendor/magnific-popup/magnific-popup.css" />
  <!-- theme stylesheet-->
  <link rel="stylesheet" href="${path}/resources/css/style.default.css" id="theme-stylesheet" />
  <!-- Custom stylesheet - for your changes-->
  <link rel="stylesheet" href="${path}/resources/css/custom.css" />
  <!-- Favicon-->
  <link rel="shortcut icon" href="${path}/resources/img/favicon.png" />
  <!-- Tweaks for older IEs-->
  <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  <!-- Font Awesome CSS-->
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css"
    integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous" />
</head>
		
<body style="padding-top: 72px">
  <header class="header">     
    <!-- 내브바 -->
    <nav class="navbar navbar-expand-lg fixed-top shadow navbar-light bg-white">
      <div class="container"> 
        <div class="d-flex align-items-center">
          <a class="navbar-brand py-1" href="${path}/">
            <img src="${path}/resources/img/logo/logo_name.png" alt="Directory logo" class="w-6rem" />
          </a>
        </div>
        <button class="navbar-toggler navbar-toggler-right" type="button" data-bs-toggle="collapse"
          data-bs-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false"
          aria-label="Toggle navigation">
          <i class="fa fa-bars"></i>
        </button>
        <!--  내브바 Collapse -->
        <div class="collapse navbar-collapse" id="navbarCollapse">
          <ul class="navbar-nav ms-auto">
            <li class="nav-item dropdown">
               <a class="nav-link dropdown-toggle fs-6" id="docsDropdownMenuLink" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">산림</a>
              <div class="dropdown-menu dropdown-menu-end" aria-labelledby="docsDropdownMenuLink">
                <a class="dropdown-item" href="${path}/mount/mount">산 정보</a>
                <a class="dropdown-item" href="${path}/mount/mountTop100">100대 명산</a>
              </div>
            </li>
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle fs-6" id="docsDropdownMenuLink" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">둘레길/자전거길</a>
              <div class="dropdown-menu dropdown-menu-end" aria-labelledby="docsDropdownMenuLink">
                <a class="dropdown-item" href="${path}/mount/dulle">둘레길</a>
                <a class="dropdown-item" href="${path}/mount/trail">자전거길</a>
              </div>
            </li>
            <li class="nav-item dropdown">
          		<a class="nav-link fs-6" href="${path}/forest/forest">휴양림</a>
            </li>
            <c:if test="${ loginMember.role == 'ROLE_ADMIN' }">
	            <li class="nav-item dropdown">
	          		<a class="nav-link dropdown-toggle fs-6" id="docsDropdownMenuLink" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">휴양림</a>
	              <div class="dropdown-menu dropdown-menu-end" aria-labelledby="docsDropdownMenuLink">
	                <a class="dropdown-item" href="${path}/forest/forest">휴양림</a>
			            	<a class="dropdown-item" href="${path}/forest/forestManager">휴양림 예약 관리</a>
	              </div>
	            </li>
			</c:if>
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle fs-6" id="docsDropdownMenuLink" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">커뮤니티</a>
              <div class="dropdown-menu dropdown-menu-end" aria-labelledby="docsDropdownMenuLink">
                <a class="dropdown-item" href="${path}/community/communityBoard">자유게시판</a>
                <a class="dropdown-item" href="${path}/community/communityReview">방문후기</a>
            	<a class="dropdown-item" href="${path}/community/communityStamp">등산 스탬프 순위</a>
            	<c:if test="${ loginMember.role == 'ROLE_ADMIN' }">
		            	<a class="dropdown-item" href="${path}/community/communityStampManager">등산 스탬프 관리</a>
				</c:if>
              </div>
            </li>
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle fs-6" id="docsDropdownMenuLink" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">고객센터</a>
              <div class="dropdown-menu dropdown-menu-end" aria-labelledby="docsDropdownMenuLink">
                <a class="dropdown-item" href="${path}/community/communityQandAFandA">자주 묻는 질문</a>
                <a class="dropdown-item" href="${path}/community/boardWrite"> 1&nbsp:&nbsp1&nbsp문의하기 </a> <!-- 1:1문의 -->
              </div>
            </li>
            <c:if test="${loginMember == null}">
	            <li class="nav-item mx-3">
	    	        <a class="nav-link fs-6" href="${path}/member/login">Sign in</a>
	            </li>
	            <li class="nav-item">
	           		<a class="nav-link fs-6" href="${path}/member/signup">Sign up</a>
	            </li>
			</c:if>
           	<c:if test="${ loginMember != null }">
	            <li class="nav-item mx-2">
	           		<a class="btn btn-primary ps-3" href="${path}/user/user">${loginMember.name} 님</a></div>
	           		<a class="nav-link fs-6" href="${path}/logout">로그아웃</a>
	            </li>
			</c:if>
          </ul>
        </div>
      </div>
    </nav>
  </header>

  <!-- JavaScript files-->
  <script>
    // ------------------------------------------------------- //
    //   Inject SVG Sprite -
    //   see more here
    //   https://css-tricks.com/ajaxing-svg-sprite/
    // ------------------------------------------------------ //
    function injectSvgSprite(path) {
      var ajax = new XMLHttpRequest()
      ajax.open('GET', path, true)
      ajax.send()
      ajax.onload = function (e) {
        var div = document.createElement('div')
        div.className = 'd-none'
        div.innerHTML = ajax.responseText
        document.body.insertBefore(div, document.body.childNodes[0])
      }
    }
    // to avoid CORS issues when viewing using file:// protocol, using the demo URL for the SVG sprite
    // use your own URL in production, please :)
    // https://demo.bootstrapious.com/directory/1-0/icons/orion-svg-sprite.svg
    //- injectSvgSprite('${path}icons/orion-svg-sprite.svg');
    injectSvgSprite(
      'https://demo.bootstrapious.com/directory/1-4/icons/orion-svg-sprite.svg'
    )
  </script>
  <!-- jQuery-->
  <script src="${path}/resources/vendor/jquery/jquery.min.js"></script>
  <!-- Bootstrap JS bundle - Bootstrap + PopperJS-->
  <script src="${path}/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <!-- Magnific Popup - Lightbox for the gallery-->
  <script src="${path}/resources/vendor/magnific-popup/jquery.magnific-popup.min.js"></script>
  <!-- Smooth scroll-->
  <script src="${path}/resources/vendor/smooth-scroll/smooth-scroll.polyfills.min.js"></script>
  <!-- Bootstrap Select-->
  <script src="${path}/resources/vendor/bootstrap-select/js/bootstrap-select.min.js"></script>
  <!-- Object Fit Images - Fallback for browsers that don't support object-fit-->
  <script src="${path}/resources/vendor/object-fit-images/ofi.min.js"></script>
  <!-- Swiper Carousel                       -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.4.1/js/swiper.min.js"></script>
  <script>
    var basePath = ''
  </script>
  <!-- Main Theme JS file    -->
  <script src="${path}/resources/js/theme.js"></script>
  
