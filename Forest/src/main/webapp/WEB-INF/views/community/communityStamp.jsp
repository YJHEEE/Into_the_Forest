<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<c:set var="path" value="${pageContext.request.contextPath}"/>

<jsp:include page="/WEB-INF/views/common/header.jsp"></jsp:include>



 <!-- 메인 -->
  <section>
    <div class="container pt-6">
      <div class="row pb-5">
        <h5 class="subtitle text-secondary">명산을 가장 많이 다녀온 순위는? </h5>
        <h1>명예의 전당</h1>
      </div>
      <div class="row py-5 pt-lg-5 mt-lg-n5">
        <div class="mb-3 mb-lg-0 text-center">
          <div class="card border-0 shadow-sm hover-animate h-100">
            <div class="card-body p-4 row">
              <div class="col-sm-6">
                <img src="${path }/resources/img/community13.jpg" alt="" class="team-img" style="height: 100%; object-fit: cover;">
              </div>
              <div class=" col-sm-6 text-start ">
                <h1 class="pt-1 text-success bold ">1위<span class="text-black ps-3">SunSir</span></h1>
                <h3 class="pt-1 ">스탬프 43개</h3>
                <p class="text-muted text-sm mb-0 ">
                  가야산/가리왕산/감악산/강천산/검단산/계룡산/남산/남한산/대야산/덕유산/도봉산/명선산/명지산/무등산/미륵산/민둥산/민주지산/백운산/북한산/삼악산/서대산/선운산/설악산/소요산/속리산/수리산/오대산/월악산/장안산/조령산/지리산/천관산/천마산/천태산/치악산/칠갑산/태백산/팔봉산/한라산/화왕산/황악산
                </p>
                <br>
                <div class="text-center" style="overflow: scroll;">
                  <ul class="list-unstyled d-flex justify-content-between">
                    <li>
                      <div class="col-auto text-center text-sm "><img
                          class="avatar avatar-xl avatar-border-white hover-animate mx-2 mb-2 "
                          src="${path }/resources/img/stamp/stamp_green2.png " alt=" "><br>한라산</div>
                    </li>
                    <li>
                      <div class="col-auto text-center text-sm "><img
                          class="avatar avatar-xl avatar-border-white hover-animate mx-2 mb-2 "
                          src="${path }/resources/img/stamp/stamp_green2.png " alt=" "><br>칠갑산</div>
                    </li>
                    <li>
                      <div class="col-auto text-center text-sm "><img
                          class="avatar avatar-xl avatar-border-white hover-animate mx-2 mb-2 "
                          src="${path }/resources/img/stamp/stamp_grey2.png " alt=" "><br>가리산</div>
                    </li>
                    <li>
                      <div class="col-auto text-center text-sm "><img
                          class="avatar avatar-xl avatar-border-white hover-animate mx-2 mb-2 "
                          src="${path }/resources/img/stamp/stamp_grey2.png " alt=" "><br>가리왕산</div>
                    </li>
                    <li>
                      <div class="col-auto text-center text-sm "><img
                          class="avatar avatar-xl avatar-border-white hover-animate mx-2 mb-2 "
                          src="${path }/resources/img/stamp/stamp_grey2.png " alt=" "><br>가야산</div>
                    </li>
                  </ul>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>

  <section>
    <div class="container pt-5">
      <div class="row mb-5">
        <div class="mb-3 mb-lg-0 col-sm-6 col-lg-3">
          <div class="card border-0 hover-animate bg-transparent">
            <div class="card-body team-body text-center">
              <h3 class="pt-1 text-black bold pb-3">2위</h3>
              <img class="avatar avatar-xxl p-2 mb-2" src="${path }/resources/img/user.png" alt="">
              <h5 class="py-2">gildong</h5>
              <p>스탬프 40개</p>
            </div>
          </div>
        </div>
        <div class="mb-3 mb-lg-0 col-sm-6 col-lg-3">
          <div class="card border-0 hover-animate bg-transparent">
            <div class="card-body team-body text-center">
              <h3 class="pt-1 text-black bold pb-3">3위</h3>
              <img class="avatar avatar-xxl p-2 mb-2" src="${path }/resources/img/user.png" alt="">
              <h5 class="py-2">_haesung</h5>
              <p>스탬프 35개</p>
            </div>
          </div>
        </div>
        <div class="mb-3 mb-lg-0 col-sm-6 col-lg-3">
          <div class="card border-0 hover-animate bg-transparent">
            <div class="card-body team-body text-center">
              <h3 class="pt-1 text-black bold pb-3">4위</h3>
              <img class="avatar avatar-xxl p-2 mb-2" src="${path }/resources/img/user.png" alt="">
              <h5 class="py-2">2_jin</h5>
              <p>스탬프 32개</p>
            </div>
          </div>
        </div>
        <div class="mb-3 mb-lg-0 col-sm-6 col-lg-3">
          <div class="card border-0 hover-animate bg-transparent">
            <div class="card-body team-body text-center">
              <h3 class="pt-1 text-black bold pb-3">5위</h3>
              <img class="avatar avatar-xxl p-2 mb-2" src="${path }/resources/img/user.png" alt="">
              <h5 class="py-2">YjHEe10</h5>
              <p>스탬프 27개</p>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>

  <section class="container py-5 ">
    <table class="table text-gray-700 table-striped table-hover">
     <form action="${path}/community/communityStamp" method="get">
      <div class="col-xl-5 mb-4" style="float: right;">
        <div class="input-group">
          <input class="form-control" type="text" name="id" placeholder="사용자 ID를 입력해주세요." id="form_search">
          <button class="btn btn-primary" style="float: right;" type="submit">검색</button>
        </div>
      </div>
     </form>
      <tr>
        <th class="py-4 text-center align-middle">순위</th>
        <th class="py-4 text-center align-middle">사용자ID</th>
        <th class="py-4 text-center align-middle">스탬프 수</th>
      </tr>
      <tr>
        <td class="py-4 text-center align-middle">6위</td> <!-- Rank -->
        <td class="py-4 text-center align-middle"><c:out value="${stamp.id}"/></td> <!-- 사용자 ID -->
        <td class="py-4 text-center align-middle"><c:out value="${stamp.id}"/></td> <!-- 스탬프 수 -->
      </tr>
      <tr>
        <td class="py-4 text-center align-middle">7위</td>
        <td class="py-4 text-center align-middle">duru_duru</td>
        <td class="py-4 text-center align-middle">22개</td>
      </tr>
      <tr>
        <td class="py-4 text-center align-middle">8위</td>
        <td class="py-4 text-center align-middle">ZaraFriend</td>
        <td class="py-4 text-center align-middle">20개</td>
      </tr>
      <tr>
        <td class="py-4 text-center align-middle">9위</td>
        <td class="py-4 text-center align-middle">imzara12</td>
        <td class="py-4 text-center align-middle">19개</td>
      </tr>
      <tr>
        <td class="py-4 text-center align-middle">10위</td>
        <td class="py-4 text-center align-middle">Amugae333</td>
        <td class="py-4 text-center align-middle">17개</td>
      </tr>
      <tr>
        <td class="py-4 text-center align-middle">11위</td>
        <td class="py-4 text-center align-middle">7triangle7</td>
        <td class="py-4 text-center align-middle">16개</td>
      </tr>
      <tr>
        <td class="py-4 text-center align-middle">12위</td>
        <td class="py-4 text-center align-middle">prettyWeb</td>
        <td class="py-4 text-center align-middle">15개</td>
      </tr>
      <tr>
        <td class="py-4 text-center align-middle">13위</td>
        <td class="py-4 text-center align-middle">123id45this</td>
        <td class="py-4 text-center align-middle">11개</td>
      </tr>
      <tr>
        <td class="py-4 text-center align-middle">14위</td>
        <td class="py-4 text-center align-middle">qlalfqjsgh</td>
        <td class="py-4 text-center align-middle">10개</td>
      </tr>
      <tr>
        <td class="py-4 text-center align-middle">15위</td>
        <td class="py-4 text-center align-middle">abc_id</td>
        <td class="py-4 text-center align-middle">7개</td>
      </tr>
      <tr>
        <td class="py-4 text-center align-middle">16위</td>
        <td class="py-4 text-center align-middle">flower11plan</td>
        <td class="py-4 text-center align-middle">6개</td>
      </tr>
      <tr>
        <td class="py-4 text-center align-middle">17위</td>
        <td class="py-4 text-center align-middle">invite_you</td>
        <td class="py-4 text-center align-middle">4개</td>
      </tr>

    </table>

  </section>
   <!-- 푸터 -->
<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>
</body>

</html>