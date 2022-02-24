<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<c:set var="path" value="${pageContext.request.contextPath}" />
<jsp:include page="/WEB-INF/views/common/header.jsp"></jsp:include>

<!-- 경로 -->
<section class="d-flex align-items-center dark-overlay bg-cover"
	style="background-image: url(<%=request.getContextPath()%>/resources/img/breadcrumbs_img.jpg)">
	<div
		class="container py-4 py-lg-6 text-white overlay-content text-center">
		<h1 class="display-5 fw-bold text-shadow">자유게시판</h1>
		<p class="text-lg text-shadow">홈 - 커뮤니티 - 자유게시판</p>
	</div>
</section>
<!-- 매인 -->
<section class="py-6">
	<div class="container">
		<div class="table-responsive mb-4">
			<table class="table text-gray-700 table-striped table-hover">
				<div class="d-flex justify-content-between align-items-center mb-3">
					<div class="">
						<p class="mb-md-0 fs-5">
							<i class="fa fa-clipboard-list me-1"></i>&nbsp총 게시글
						</p>
					</div>
					<form action="${path}/community/communityBoard" method="get">
					<div class="col-md-4" style="margin: 0px auto">
						<div class="input-label-absolute input-label-absolute-right">
							<div class="label-absolute">
								<i class="fa fa-search"></i>
							</div>
							<input type="hidden" name="searchType" value="title">
							<input class="form-control" type="text" name="searchValue"
								placeholder="제목을 입력하세요." id="form_search" />
						</div>
					</div>
					</form>
					<div></div>
					<a class="btn btn-primary float-end ps-3" href="boardWrite"><i
						class="fa-pen fa me-1"></i>글쓰기</a>
				</div>
				<tr>
					<th class="py-4 text-center align-middle text-gray-800">게시판 번호</th>
					<th class="py-4 text-center align-middle text-gray-800">작성자</th>
					<th class="py-4 text-center align-middle text-gray-800">제목</th>
					<th class="py-4 text-center align-middle text-gray-800">날짜</th>
				</tr>
				<c:if test="${list==null}">
          			<td class="py-4 text-center align-middle" colspan="4">조회된 게시글이 없습니다.</td>
         		</c:if>
       		    <c:if test="${list!=null}">
	       		    <c:forEach var="board" items="${list}">
						<tr>
							<td class="py-4 text-center align-middle"><c:out value="${board.no}"/></td>
							<td class="py-4 text-center align-middle"><c:out value="${board.writerId}"/></td>
							<td class="py-4 text-center align-middle"><c:out value="${board.title}"/></td>
							<td class="py-4 text-center align-middle">2022.01.03</td>
						</tr>
	       		    </c:forEach>
				</c:if>
			</table>
		</div>
		<nav aria-label="Page navigation example">
			<ul
				class="pagination pagination-template d-flex justify-content-center">
				<li class="page-item"><a class="page-link" href="${path}/community/communityBoard?page=${pageInfo.prvePage}"> <i
						class="fa fa-angle-left"></i></a></li>
					<c:forEach begin="${ pageInfo.startPage }" end="${ pageInfo.endPage }" step="1" varStatus="status">
						<c:if test="${ pageInfo.currentPage == status.current}">
							<button class="page-link action" disabled><c:out value="${ status.current }"/></button>
						</c:if>
						<c:if test="${ pageInfo.currentPage != status.current}">
							<button class="page-link" onclick="location.href='${ path }/community/communityBoard?page=${ status.current }'">
								<c:out value="${ status.current }"/>
							</button>
						</c:if>
					</c:forEach>
				<li class="page-item"><a class="page-link" href="${ path }/community/communityBoard?page=${ pageInfo.nextPage }"> <i
						class="fa fa-angle-right"></i></a></li>
			</ul>
		</nav>
	</div>
</section>
<!-- 푸터 -->
<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>
</body>

</html>