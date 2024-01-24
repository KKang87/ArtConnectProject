<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="com.multi.artConnect.gallery.GalleryVO"%>
<%@ page import="com.multi.artConnect.gallery.ProgramVO_gallery"%>
<%@ page import="java.util.List"%>

<!DOCTYPE html>

<html>

<head>

<title>:: 미술관 상세 페이지 ::</title>
<!-- css 스타일  -->
<%@ include file="/header.jsp"%>

<!-- formatDate 영어로  -->
<fmt:setLocale value="en_US" />

<style>
strong {
	font-size: 18px; /* 원하는 글자 크기로 조절하세요 */
	color: black;
}

/* 3D Button */
.btn-3d {
  position: relative;
  display: inline-block;
  font-size: 22px;
  padding: 20px 60px;
  color: white;
  margin: 20px 10px 10px;
  border-radius: 6px;
  text-align: center;
  transition: top .01s linear;
  text-shadow: 0 1px 0 rgba(0,0,0,0.15);
}
.btn-3d.red:hover    {background-color: #e74c3c;}
.btn-3d.blue:hover   {background-color: #699DD1;}
.btn-3d.green:hover  {background-color: #80C49D;}
.btn-3d.purple:hover {background-color: #D19ECB;}
.btn-3d.yellow:hover {background-color: #F0D264;}
.btn-3d.cyan:hover   {background-color: #82D1E3;}

.btn-3d:active {
  top: 9px;
}

/* 3D button colors */
.btn-3d.red {
  background-color: #e74c3c;
  box-shadow: 0 0 0 1px #c63702 inset,
        0 0 0 2px rgba(255,255,255,0.15) inset,
        0 8px 0 0 #C24032,
        0 8px 0 1px rgba(0,0,0,0.4),
        0 8px 8px 1px rgba(0,0,0,0.5);
}
.btn-3d.red:active {
  box-shadow: 0 0 0 1px #c63702 inset,
        0 0 0 2px rgba(255,255,255,0.15) inset,
        0 0 0 1px rgba(0,0,0,0.4);
}

.btn-3d.blue {
  background-color: #6DA2D9;
  box-shadow: 0 0 0 1px #6698cb inset,
        0 0 0 2px rgba(255,255,255,0.15) inset,
        0 8px 0 0 rgba(110, 164, 219, .7),
        0 8px 0 1px rgba(0,0,0,.4),
        0 8px 8px 1px rgba(0,0,0,0.5);
}
.btn-3d.blue:active {
  box-shadow: 0 0 0 1px #6191C2 inset,
        0 0 0 2px rgba(255,255,255,0.15) inset,
        0 0 0 1px rgba(0,0,0,0.4);
}

.btn-3d.green {
  background-color: #82c8a0;
  box-shadow: 0 0 0 1px #82c8a0 inset,
        0 0 0 2px rgba(255,255,255,0.15) inset,
        0 8px 0 0 rgba(126, 194, 155, .7),
        0 8px 0 1px rgba(0,0,0,.4),
        0 8px 8px 1px rgba(0,0,0,0.5);
}
.btn-3d.green:active {
  box-shadow: 0 0 0 1px #82c8a0 inset,
        0 0 0 2px rgba(255,255,255,0.15) inset,
        0 0 0 1px rgba(0,0,0,0.4);
}

.btn-3d.purple {
  background-color: #cb99c5;
  box-shadow: 0 0 0 1px #cb99c5 inset,
        0 0 0 2px rgba(255,255,255,0.15) inset,
        0 8px 0 0 rgba(189, 142, 183, .7),
        0 8px 0 1px rgba(0,0,0,.4),
        0 8px 8px 1px rgba(0,0,0,0.5);
}
.btn-3d.purple:active {
  box-shadow: 0 0 0 1px #cb99c5 inset,
        0 0 0 2px rgba(255,255,255,0.15) inset,
        0 0 0 1px rgba(0,0,0,0.4);
}

.btn-3d.cyan {
  background-color: #7fccde;
  box-shadow: 0 0 0 1px #7fccde inset,
        0 0 0 2px rgba(255,255,255,0.15) inset,
        0 8px 0 0 rgba(102, 164, 178, .6),
        0 8px 0 1px rgba(0,0,0,.4),
        0 8px 8px 1px rgba(0,0,0,0.5);
}
.btn-3d.cyan:active {
  box-shadow: 0 0 0 1px #7fccde inset,
        0 0 0 2px rgba(255,255,255,0.15) inset,
        0 0 0 1px rgba(0,0,0,0.4);
}

.btn-3d.yellow {
  background-color: #F0D264;
  box-shadow: 0 0 0 1px #F0D264 inset,
        0 0 0 2px rgba(255,255,255,0.15) inset,
        0 8px 0 0 rgba(196, 172, 83, .7),
        0 8px 0 1px rgba(0,0,0,.4),
        0 8px 8px 1px rgba(0,0,0,0.5);
}
.btn-3d.yellow:active {
  box-shadow: 0 0 0 1px #F0D264 inset,
        0 0 0 2px rgba(255,255,255,0.15) inset,
        0 0 0 1px rgba(0,0,0,0.4);
}


</style>

<script>
        var userLang = navigator.language || navigator.userLanguage;
    </script>

</head>

<body>
	<!-- nav, logo UI가 달라질 경우 이 부분을 변경해주세요 -->
	<%@ include file="/nav.jsp"%>

	<!-- main -->

	<main role="main-inner-wrapper" class="container">

		<!-- work details -->
		<div class="work-details">
			<div class="row">
				<div class="col-xs-12 col-sm-12 col-md-5">
					<header role="work-title">
						<h2>${gallery.galleryName}</h2>
						<c:choose>
							<c:when
								test="${not gallery.homepageAddress.startsWith('https://')}">
								<c:set var="modifiedHomepageAddress"
									value="https://${gallery.homepageAddress}" />
							</c:when>
							<c:otherwise>
								<c:set var="modifiedHomepageAddress"
									value="${gallery.homepageAddress}" />
							</c:otherwise>
						</c:choose>
						<a href="${modifiedHomepageAddress}" target="_blank">온라인 홈페이지 방문하기
							<i class="fa fa-external-link" aria-hidden="true"></i>
						</a>
						<div style="margin-top: 20px;">
							<img
								src="${pageContext.request.contextPath}/resources/img/gallery/${gallery.galleryImg}"
								alt="${gallery.galleryName} 이미지" class="img-responsive" />
						</div>
					</header>
				</div>

				<div class="col-xs-12 col-sm-12 col-md-7" style="margin-top: 110px;">
					<section>

						<p>
							<strong>미술관 주소 : </strong> ${gallery.galleryLocation} <br /> <strong>미술관
								운영시간 : </strong> ${gallery.galleryOpentime} - ${gallery.galleryClosetime}
							<br /> <strong>미술관 휴관일 : </strong><span id="closedDayDisplay"></span><br />
							<strong>미술관 연락처 : </strong>${gallery.galleryTel}<br />
							<strong>미술관 좋아요 :</strong><br />
							<button id="likeButton" style="background-color: #333; color: #fff; padding: 10px 20px; border: none; cursor: pointer;">좋아요!</button>
							<br>
							<strong id="likeMessage"></strong> <br><br>
							<strong>프로그램 예약</strong><br />
							<a href="${pageContext.request.contextPath}/reservation/programSelection/${gallery.galleryID}">
							<button style="background-color: #333; color: #fff; padding: 10px 20px; border: none; cursor: pointer;">예약하기</button>
							</a>
						</p>
					</section>
				</div>

				<script>
    document.addEventListener("DOMContentLoaded", function () {
        const closedDayValue = "${gallery.closedDay}";
        const dayMapping = {
            "Monday": "월요일",
            "Tuesday": "화요일",
            "Wednesday": "수요일",
            "Thursday": "목요일",
            "Friday": "금요일",
            "Saturday": "토요일",
            "Sunday": "일요일",
        };

        const closedDays = closedDayValue.split(',').map(day => dayMapping[day.trim()]);

        document.getElementById('closedDayDisplay').textContent = closedDays.join(', ');
    });
</script>

			</div>

			<div class="clearfix"></div>

			<div class="work-images grid">
				<div class="work-map" style="margin-top: -10px;">
					<div class="row">
						<div class="col-xs-12 col-sm-12 col-md-12">
							<header role="work-title" style="text-align: left;">
								<h2 style="margin-left: 0px;">찾아오시는길</h2>
							</header>
						</div>
					</div>
				</div>

				<div id="map"
					style="width: 100%; height: 400px; margin-bottom: 30px;"></div>
				<script type="text/javascript"
					src="//dapi.kakao.com/v2/maps/sdk.js?appkey=79876cb9142b1dc6b254e0869dd8bd91"></script>
				<script type="text/javascript">
                           var container = document.getElementById('map'); //지도를 담을 영역의 DOM 레퍼런스
                           var options = { //지도를 생성할 때 필요한 기본 옵션
                           center: new kakao.maps.LatLng(${gallery.lat}, ${gallery.lon}), //지도의 중심좌표.
                           level: 3 //지도의 레벨(확대, 축소 정도)
                           };
                           var map = new kakao.maps.Map(container, options); //지도 생성 및 객체 리턴
                           
                           // 마커가 표시될 위치입니다 
                            var markerPosition = new kakao.maps.LatLng(${gallery.lat},${gallery.lon});

                            // 마커를 생성합니다
                            var marker = new kakao.maps.Marker({
                                position: markerPosition
                            });

                            // 마커가 지도 위에 표시되도록 설정합니다
                            marker.setMap(map);
                        </script>

				<div class="work-program">
					<div class="row">
						<div class="col-xs-12 col-sm-12 col-md-12">
							<header role="work-title" style="text-align: left;">
								<h2 style="margin-left: 0px;">전시중인 프로그램</h2>
							</header>
						</div>
					</div>
				</div>

				<ul class="grid-lod effect-2" id="grid">
					<c:choose>
						<c:when test="${empty programList}">
							<!-- 프로그램이 없는 경우 -->
							<li class="col-xs-12">
								<section class="blog-content" style="text-align: center;">
									<br> <br>
									<p class="no-program-message"
										style="font-size: 30px; color: black;">전시중인 프로그램이 없습니다. 다음
										전시를 기대해주세요.</p>
								</section>
							</li>
						</c:when>

						<c:otherwise>
							<!-- 프로그램이 있는 경우 -->
							<c:forEach var="program" items="${programList}">
								<li class="col-xs-12 col-sm-6 col-md-6 col-lg-6"
									style="text-align: left;">
									<section class="blog-content">
										<!-- 사용자의 programID 값을 가져와 링크를 동적으로 생성 -->
										<c:url var="programDetailURL" value="/gallery/program_detail">
											<c:param name="programID" value="${program.programID}" />
										</c:url>
										<a href="${programDetailURL}">
											<figure>
												<div class="post-date">
													<span> <fmt:formatDate value="${program.programEnd}"
															pattern="dd" />
													</span>
													<fmt:formatDate value="${program.programEnd}"
														pattern="MMMM yyyy" />
												</div>
												<img
													src="${pageContext.request.contextPath}/resources/img/program/${program.programImg}"
													alt="Program Image" style="width: 500px; height: 500px;">
											</figure>
										</a>
									</section>
								</li>
							</c:forEach>
						</c:otherwise>
					</c:choose>
				</ul>
			</div>

		</div>

		<!-- work details -->

	</main>

	<!-- main -->

	<!-- footer -->

	<footer role="footer">

		<!-- nav -->

		<nav role="footer-nav">

			<ul>

				<li><a href="index.html" title="Work">Work</a></li>

				<li><a href="about.html" title="About">About</a></li>

				<li><a href="blog.html" title="Blog">Blog</a></li>

				<li><a href="contact.html" title="Contact">Contact</a></li>

			</ul>

		</nav>

		<!-- nav -->

		<ul role="social-icons">

			<li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>

			<li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>

			<li><a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>

			<li><a href="#"><i class="fa fa-flickr" aria-hidden="true"></i></a></li>

		</ul>

		<p class="copy-right">
			Shared by <i class="fa fa-love"></i><a
				href="https://bootstrapthemes.co">BootstrapThemes</a>
		</p>

	</footer>

	<!-- footer -->


	<!-- Java Script -->
	<%@ include file="/alljs.jsp"%>

	<!-- Like 관련 스크립트 -->
	<script>
	 $(document).ready(function() {
	        var likeButton = $("#likeButton");
	        var likeMessage = $("#likeMessage");
	        
	        // 좋아요 상태 가져오기
	        $.ajax({
	            url: "likeCheck",  
	            type: "POST",
	            data: {
	                galleryID: '${gallery.galleryID}',
	                galleryName: '${gallery.galleryName}'
	            },
	            success: function(response) {
	                if (response === "liked") {
	                    likeButton.text("좋아요 취소");
	                    likeMessage.text("이미 좋아요한 항목입니다.");
	                } else {
	                    likeButton.text("좋아요!");
	                    likeMessage.text("*Like를 누르시면 마이페이지에 추가됩니다.");
	                }
	            },
	            error: function(error) {
	                console.error("Error: " + error);
	            }
	        });

	        // Like 버튼 클릭시
	        $("#likeButton").click(function() {
	            // Like 버튼 클릭시
	            var likeButton = document.getElementById('likeButton');

	            if (likeButton.innerText === '좋아요!') {
	                // Like 버튼 클릭 처리
	                $.ajax({
	                    url: "like",
	                    type: "POST",
	                    data: {
	                        galleryID: '${gallery.galleryID}',
	                        galleryName: '${gallery.galleryName}'
	                    },
	                    success: function(response) {
	                        alert("좋아요 등록되었습니다");
	                        likeButton.innerText = '좋아요 취소';

	                        var likeMessage = $("#likeMessage");
	                        likeMessage.text("마이페이지에 추가되었습니다.");
	                    },
	                    error: function(error) {
	                        console.error("Error 발생: " + error);
	                        if (error.status === 500) {
	                            alert("로그인 후 이용가능합니다.");
	                        } else {
	                            alert("에러!");
	                        }
	                    }
	                });
	            } else {
	                // Cancel Like 버튼 클릭 처리
	                $.ajax({
	                    url: "cancleLike",
	                    type: "POST",
	                    data: {
	                        galleryID: '${gallery.galleryID}',
	                        galleryName: '${gallery.galleryName}'
	                    },
	                    success: function(response) {
	                        alert("좋아요를 취소했습니다");
	                        likeButton.innerText = '좋아요!';

	                        var likeMessage = $("#likeMessage");
	                        likeMessage.text("삭제함");
	                    },
	                    error: function(error) {
	                        console.error("Error: " + error);
	                    }
	                });
	            }
	        });
	    });
</script>

</body>

</html>