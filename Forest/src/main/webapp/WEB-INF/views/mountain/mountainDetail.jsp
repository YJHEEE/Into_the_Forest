<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<c:set var="path" value="${pageContext.request.contextPath}"/>
<jsp:include page="/WEB-INF/views/common/header.jsp"></jsp:include>

  <!-- 메인 -->
  <section>
    <!-- 사진 슬라이더 -->
    <div class="swiper-container detail-slider slider-gallery">
      <div class="swiper-wrapper">
        <div class="swiper-slide w-auto">
          <a href="${path }/resources/img/top100/덕숭산.jpg" data-toggle="gallery-top" title="Our street"><img class="img-fluid"
              src="${path }/resources/img/top100/덕숭산.jpg" alt="Our street" /></a>
        </div>
        <div class="swiper-slide w-auto">
          <a href="${path }/resources/img/top100/덕숭산2.jpg" data-toggle="gallery-top" title="Outside"><img class="img-fluid"
              src="${path }/resources/img/top100/덕숭산2.jpg" alt="Outside" /></a>
        </div>
        <div class="swiper-slide w-auto">
          <a href="${path }/resources/img/top100/덕숭산3.jpg" data-toggle="gallery-top" title="Rear entrance"><img class="img-fluid"
              src="${path }/resources/img/top100/덕숭산3.jpg" alt="Rear entrance" style="object-fit: fill;" /></a>
        </div>
        <div class="swiper-slide w-auto">
          <a href="${path }/resources/img/top100/덕숭산4.jpg" data-toggle="gallery-top" title="Kitchen"><img class="img-fluid"
              src="${path }/resources/img/top100/덕숭산4.jpg" alt="Kitchen" /></a>
        </div>
        <div class="swiper-slide w-auto">
          <a href="${path }/resources/img/top100/덕숭산5.jpg" data-toggle="gallery-top" title="Bedroom"><img class="img-fluid"
              src="${path }/resources/img/top100/덕숭산5.jpg" alt="Bedroom" /></a>
        </div>
        <div class="swiper-slide w-auto">
          <a href="${path }/resources/img/top100/덕숭산6.jpg" data-toggle="gallery-top" title="Bedroom"><img class="img-fluid"
              src="${path }/resources/img/top100/덕숭산6.jpg" alt="Bedroom" /></a>
        </div>
      </div>
      <div class="swiper-pagination swiper-pagination-white"></div>
      <div class="swiper-button-prev swiper-button-white"></div>
      <div class="swiper-button-next swiper-button-white"></div>
    </div>
  </section>

  <!-- Hero Section2-->
  <section class="py-6">
    <div class="container">
      <div class="row">
        <div class="col-xl-8 col-lg-10 mx-auto">
          <div class="text-content">
            <p class="text-primary mb-1 ms-1"><i class="fa-mountain fa me-1"></i>해발고도 1708m</p>
            <h1 class="mb-4 display-4 alert-link mt-0">덕숭산</h1>
            <div class="mb-0">
              <h4 class="mb-2">100대 명산 선정 이유</h4>
              <p>
                지역 주민들이 소금강이라고 할 만큼 기암괴석과 어우러진 경관이
                수려하고, 도립공원으로 지정(1973년)되어 있는 점 등을 감안하여
                선정, 백제 제29대 법왕 원년(599년) 지명법사가 창건한
                수덕사(修德寺), 보물 제355호인 마애불과 덕산온천이 유명하다.
              </p>
            </div>
            <div class="mb-6">
              <figure class="figure">
                <img class="figure-img img-fluid" src="${path }/resources/img/top100/덕숭산6.jpg" alt="Example blog post alt." />
                <figcaption class="figure-caption text-center">
                  수덕사
                </figcaption>
              </figure>
            </div>
            <div class="mb-0">
              <h4 class="mb-4 ps-3" style="border-left: 5px solid rgb(54, 52, 52);">산행 Point</h4>
              <p class="mb-4">
                금강산보다 몇 수 위인 한국의 알프스한마디로 한국의 알프스다.
                흔히 금강산에 비유하지만 높이도 72미터나 낮고 동서로 긴 능선이
                없어 산역은 훨씬 좁다. 그럼에도 금강산이 예로부터 더 유명했던
                이유는 교통이 편리한 데다 짚신 신고도 못 올라갈 데가 거의 없을
                만큼 산이 순하기 때문이다. 알피니즘의 관점에서는 더욱, 설악산이
                금강산보다 몇 수 위다.높이로는 한라산과 지리산 다음이나
                빼어남으로는 분명 남한의 으뜸산이다. 백두대간인 공룡능선을
                경계로 서쪽을 내설악, 동쪽을 외설악으로 나누는 것이 일반적이며
                오색쪽을 따로 남설악으로 부르기도 한다. 내설악에는 백담계곡,
                수렴동, 가야동, 탕수동(12선녀탕계곡) 등의 아름다운 계곡이 있고
                외설악에는 계류미 뛰어난 천불동계곡과 협곡을 이룬 가지계곡들,
                울산바위, 봉화대, 장군봉, 범봉 등 기골스런 암봉과 기암절벽을
                자랑한다.눈이 많은 까닭에 설산이나 설봉산, 한계산으로도 불렸다.
                동국여지승람에는""한가위에 내리기 시작한 눈이 하지에 이르러
                사라지기 때문에 설악이라 한다""는 기록도 있다. 지금도 오월까지는
                골짜기에 잔설이 남아있다.
              </p>
            </div>
            <div class="mb-6">
              <h5 class="mb-4">등산로</h5>
              <div class="map-wrapper-300">
                <div class="h-100" id="detailMap">
                  <a href="#"></a>
                </div>
              </div>
            </div>
            <div class="mb-6">
              <h4 class="mb-4 ps-3" style="border-left: 5px solid rgb(54, 52, 52);">상세정보</h4>
              <p class="mb-5">
                덕숭산은 호서(湖西)의 금강산(金剛山)이라고도 불리는 산으로 산
                중턱에 수덕사가 있다.<br />
                수덕사의 대웅전은 현존하는 최고의 목조건물이다. 수덕산은
                기암괴석이 풍부하여 바위들이 사람의 두개골이나 노적가리, 사나운
                짐승이 입을 벌리고 있는 듯한 형상을 지닌 절묘한 형상을 지니고
                있다. 절경으로는 원효봉과 석문봉, 덕숭산, 해태바위 등이 있다.
                또한 수덕사를 비롯하여 정혜사, 만공탑, 여승당, 보덕사 등 많은
                문화재가 있으며 충의사와 덕산온천 등 명소가 있다.<br />수덕산은
                수덕사 등 사찰산행과 온천산행을 겸할 수 있다. 등산코스는 코스가
                짧아 가족들의 나들이 코스로도 좋다. 수덕사(修德寺)의
                대웅전(大雄殿:국보) 앞마당에 있는 삼층석탑, 대웅전 내부의
                고려벽화를 비롯하여 정혜사로 가는 중에 만공이 건립한 25척의
                석불로서 머리에 이중의 갓을 쓰고 있는 미륵불입상(彌勒佛立像)과
                만공을 추도하기 위해 세운 만공탑(萬空塔) 등이 있다.
              </p>
            </div>

            <div class="mb-6">
              <h4 class="mb-4 ps-3" style="border-left: 5px solid rgb(54, 52, 52);">교통정보</h4>
              <p>
                기점은 속초다.서울 동서울종합터미널과 강남고속버스터미널에서
                고속버스가 30분 간격으로 있고 심야버스도 두 편 있다.속초로
                시외버스가 다니는 도시는 부산, 대구, 광주, 대전, 울산, 수원,
                성남, 춘천, 안산, 일산, 의정부, 충주, 태백, 포천 등이다.내설악
                방면은 동서울동합터미널이나 상봉터미널에서 홍천 경유 직행을
                이용한다.- 속초→설악동: 7번, 7-1번 시내버스 10분 간격 운행
              </p>
            </div>
          </div>
          <div class="row gallery mb-3 ms-n1 me-n1">
            <h5 class="mb-4">주변 시설</h5>
            <div class="col-lg-4 col-6 px-1 mb-2">
              <a href="${path }/resources/img/community1.png" data-fancybox="gallery" title="Our street"><img
                  class="img-fluid" src="${path }/resources/img/community1.png" alt="..." /></a>
            </div>
            <div class="col-lg-4 col-6 px-1 mb-2">
              <a href="${path }/resources/img/community2.jpg" data-fancybox="gallery" title="Outside"><img
                  class="img-fluid" src="${path }/resources/img/community2.jpg" alt="..." /></a>
            </div>
            <div class="col-lg-4 col-6 px-1 mb-2">
              <a href="${path }/resources/img/complete2.png" data-fancybox="gallery" title="Rear entrance"><img
              	 class="img-fluid" src="${path }/resources/img/complete2.png" alt="..." /></a>
            </div>
            <div class="col-lg-4 col-6 px-1 mb-2">
              <a href="${path }/resources/img/community3.jpg" data-fancybox="gallery" title="Kitchen"><img
                  class="img-fluid" src="${path }/resources/img/community3.jpg" alt="..." /></a>
            </div>
            <div class="col-lg-4 col-6 px-1 mb-2">
              <a href="${path }/resources/img/community1.png" data-fancybox="gallery" title="Bedroom"><img
                  class="img-fluid" src="${path }/resources/img/community1.png" alt="..." /></a>
            </div>
            <div class="col-lg-4 col-6 px-1 mb-2">
              <a href="${path }/resources/img/community2.jpg" data-fancybox="gallery" title="Bedroom"><img
                  class="img-fluid" src="${path }/resources/img/community2.jpg" alt="..." /></a>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
  <!-- 푸터 -->
  <jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>
</body>

</html>