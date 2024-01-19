<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>

<%@ include file="/header.jsp" %>

</head>

<body>

<%@ include file="/nav.jsp" %>

	<main role="main-home-wrapper" class="container">

		<div class="row">

			<section class="col-xs-12 col-sm-6 col-md-6 col-lg-6 ">

				<article role="pge-title-content" style="margin-top: 20px;">

					<header>

						<h2>
							<span>ArtConnet</span> Where Art Meets Souls
						</h2>

					</header>

					<p>Comfortable Art Museum Stroll at Once</p>

				</article>

			</section>

			<section class="col-xs-12 col-sm-6 col-md-6 col-lg-6 grid"
				style="margin-top: 20px;">
				<figure class="effect-oscar">
					<img
						src="${pageContext.request.contextPath}/resources/img/gallery/메인 홈페이지/main2.png"
						alt="" class="img-responsive" />
					<figcaption>
						<br>
						<h2>
							<span style="color: black;"> </span>
						</h2>
						<p>입장하기</p>
						<a href="${pageContext.request.contextPath}/gallery/list">View
							more</a>
					</figcaption>
				</figure>
			</section>

			<section class="col-xs-12 col-sm-6 col-md-6 col-lg-6 ">
				<article role="pge-title-content" style="margin-top: 20px;">

					<header>

						<h2>
							<span>Trending</span> Art Museum<br> at this week
						</h2>
					</header>
				</article>

			</section>


			<div class="clearfix"></div>

			<section class="col-xs-12 col-sm-6 col-md-6 col-lg-6 grid">

				<ul class="grid-lod effect-2" id="grid">

					<li>
						<figure class="effect-oscar">
							<img
								src="${pageContext.request.contextPath}/resources/img/gallery/101.png"
								alt="" class="img-responsive" />
							<figcaption>
								<h2>
									<span>국립 현대 </span> 미술관
								</h2>
								<p>View more</p>
								<a href="http://localhost:8080/artConnect/gallery/detail?galleryID=1">View more</a>
							</figcaption>
						</figure>
					</li>

					<li>
						<figure class="effect-oscar">
							<img
								src="${pageContext.request.contextPath}/resources/img/gallery/102.png"
								alt="" class="img-responsive" />
							<figcaption>
								<h2>
									<span>DDP 디자인 </span> 미술관
								</h2>
								<p>View more</p>
								<a href="http://localhost:8080/artConnect/gallery/detail?galleryID=2">View more</a>
							</figcaption>
						</figure>
					</li>

					<li>
						<figure class="effect-oscar">
							<img
								src="${pageContext.request.contextPath}/resources/img/gallery/103.png"
								alt="" class="img-responsive" />
							<figcaption>
								<h2>
									<span>겸재정선 </span> 미술관
								</h2>
								<p>View more</p>
								<a href="http://localhost:8080/artConnect/gallery/detail?galleryID=3">View more</a>
							</figcaption>
						</figure>
					</li>
					<!-- 첫째줄 추가할꺼면 여기서 부터  -->

				</ul>

			</section>

			<section class="col-xs-12 col-sm-6 col-md-6 col-lg-6 grid">

				<ul class="grid-lod effect-2" id="grid">

					<li>
						<figure class="effect-oscar">
							<img
								src="${pageContext.request.contextPath}/resources/img/gallery/104.png"
								alt="" class="img-responsive" />
							<figcaption>
								<h2>
									<span>서울 시립 </span> 미술관
								</h2>
								<p>View more</p>
								<a href="http://localhost:8080/artConnect/gallery/detail?galleryID=4">View more</a>
							</figcaption>
						</figure>
					</li>

					<li>
						<figure class="effect-oscar">
							<img
								src="${pageContext.request.contextPath}/resources/img/gallery/105.png"
								alt="" class="img-responsive" />
							<figcaption>
								<h2>
									<span>성북구립 </span> 미술관
								</h2>
								<p>View more</p>
								<a href="http://localhost:8080/artConnect/gallery/detail?galleryID=5">View more</a>
							</figcaption>
						</figure>
					</li>

					<li>
						<figure class="effect-oscar">
							<img
								src="${pageContext.request.contextPath}/resources/img/gallery/106.png"
								alt="" class="img-responsive" />
							<figcaption>
								<h2>
									<span>최만린 </span> 미술관
								</h2>
								<p>View more</p>
								<a href="http://localhost:8080/artConnect/gallery/detail?galleryID=6">View more</a>
							</figcaption>
						</figure>
					</li>
					<!-- 두째줄 추가할꺼면 여기서 부터  -->

				</ul>

			</section>

			

			<div class="clearfix"></div>
			<!-- 구분선 -->
			<hr color="red">
		</div>

		<div class="work-details">
			<div class="row">
				<div class="col-xs-12 col-sm-12 col-md-4">
					<header role="work-title">
						<h2>Review</h2>
						<a href="/review/boardList.jsp">View All Reviews<i class="fa fa-external-link"
							aria-hidden="true"></i></a>
					</header>
				</div>
				<div>
					<h2>가나다라</h2>
				</div>
			</div>
		</div>

		<div class="clearfix"></div>
		<hr style="height: 5px">
		<div class="work-details">
			<div class="row">
				<div class="col-xs-12 col-sm-12 col-md-4">
					<header role="work-title">
						<h2>Notice</h2>
						<a href="#">View All Notices<i class="fa fa-external-link"
							aria-hidden="true"></i></a>
					</header>
				</div>
				<div>
					<h2>가나다라</h2>
				</div>
			</div>
		</div>

	</main>

	<!-- main -->

	<!-- footer -->

	<footer role="footer">

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

<%@ include file="/alljs.jsp" %>

</body>

</html>