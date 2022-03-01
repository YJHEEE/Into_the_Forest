<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<c:set var="path" value="${pageContext.request.contextPath}" />

<jsp:include page="/WEB-INF/views/common/header.jsp"></jsp:include>



<!-- 메인 -->
<section>
	<div class="container pt-6">
		<div class="row pb-5">
			<h5 class="subtitle text-secondary">명산을 가장 많이 다녀온 순위는?</h5>
			<h1>명예의 전당</h1>
		</div>
		<div class="row py-5 pt-lg-5 mt-lg-n5">
			<div class="mb-3 mb-lg-0 text-center">
				<div class="card border-0 shadow-sm hover-animate h-100">
					<div class="card-body p-4 row">
						<div class="col-sm-6">
							<img src="${path }/resources/img/community3.jpg" alt=""
								class="team-img" style="height: 100%; object-fit: cover;">
						</div>

						<c:forEach var="StampRank" items="${list }">
							<c:if test="${StampRank.rownum == 1 }">
								<div class=" col-sm-6 text-start ">
									<h1 class="pt-1 text-success bold ">
										<c:out value="${StampRank.rownum}"></c:out> 위 
										<span class="text-black ps-3"> 
											<c:out value="${StampRank.id}"></c:out> 님
										</span>
									</h1>
									<h3 class="pt-1">
										스탬프 <c:out value="${StampRank.count}"></c:out> 개
									</h3>
									<br>
									<div class="text-center"
										style="overflow-y: scroll; height: 200px">
										<c:forEach begin="1" end="${StampRank.count/4}" step="1">
											<ul class="list-unstyled d-flex justify-content-between">
												<c:forEach begin="1" end="4" step="1">
													<li>
														<div class="col-auto text-center text-sm">
															<img
																class="avatar avatar-xl avatar-border-white mx-3 mt-3"
																src="${path }/resources/img/stamp/stamp_green2.png "
																alt=" ">
														</div>
													</li>
												</c:forEach>
											</ul>
										</c:forEach>
										<ul class="list-unstyled d-flex justify-content-between" style="float: left;">
											<c:if test="${StampRank.count%4 != 0}">
												<c:forEach begin="1" end="${StampRank.count%4}" step="1">
													<li >
														<div class="col-auto text-center text-sm">
															<img
																class="avatar avatar-xl avatar-border-white mx-3 mt-3"
																src="${path }/resources/img/stamp/stamp_green2.png "
																alt=" ">
														</div>
													</li>
												</c:forEach>
											</c:if>
										</ul>
									</div>
								</div>
							</c:if>
						</c:forEach>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>

<section>
	<div class="container pt-5">
		<div class="row mb-5">
		
			<c:forEach var="StampRank" items="${list }">
				<c:if test="${StampRank.rownum > 1 && StampRank.rownum < 6 }">
					<div class="mb-3 mb-lg-0 col-sm-6 col-lg-3">

						<div class="card border-0 hover-animate bg-transparent">
							<div class="card-body team-body text-center">
								<h3 class="pt-1 text-black bold pb-3">
									<c:out value="${StampRank.rownum}"></c:out> 위
								</h3>
								<img class="avatar avatar-xxl p-2 mb-2" src="${path }/resources/img/user.png" alt="등산 후기 사진">
								<h5 class="py-2">
									<c:out value="${StampRank.id}"></c:out> 님
								</h5>
								<p>
									스탬프 <c:out value="${StampRank.count}"></c:out> 개
								</p>
							</div>
						</div>
					</div>
				</c:if>
			</c:forEach>

		</div>
	</div>
</section>

<section class="container py-5 ">
	<table class="table text-gray-700 table-striped table-hover">
		<div class="col-xl-5 mb-4" style="float: right;">
			<form action="${path}/community/communityStamp" method="POST">
				<div class="input-group">
					<input class="form-control" type="text" name="id"
						placeholder="사용자 ID를 입력해주세요." id="form_search">
					<button class="btn btn-primary" style="float: right;" type="submit">검색</button>
				</div>
			</form>
		</div>
		<tr>
			<th class="py-4 text-center align-middle">순위</th>
			<th class="py-4 text-center align-middle">사용자ID</th>
			<th class="py-4 text-center align-middle">스탬프 수</th>
		</tr>
		<c:if test="${list != null }">
			<c:forEach var="StampRank" items="${list }">
				<c:if test="${StampRank.rownum > 4 }">
					<tr>
						<td class="py-4 text-center align-middle">
							<c:out value="${StampRank.rownum}"></c:out> 위</td>
						<td class="py-4 text-center align-middle">
							<c:out value="${StampRank.id}"></c:out> 님</td>
						<td class="py-4 text-center align-middle">
							<c:out value="${StampRank.count}"></c:out> 개</td>
					</tr>
				</c:if>
			</c:forEach>
		</c:if>
		<c:if test="${list != null && list2 != null }">
			<c:forEach var="StampRank" items="${list2 }">
				<tr>
					<td class="py-4 text-center align-middle"><c:out
							value="${StampRank.rownum}"></c:out> 위</td>
					<td class="py-4 text-center align-middle"><c:out
							value="${StampRank.id}"></c:out> 님</td>
					<td class="py-4 text-center align-middle"><c:out
							value="${StampRank.count}"></c:out> 개</td>
				</tr>
			</c:forEach>
		</c:if>
	</table>
</section>
<!-- 푸터 -->
<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>
</body>

</html>